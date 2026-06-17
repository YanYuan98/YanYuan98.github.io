#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)
INDEX_FILE="$ROOT_DIR/index.md"
CONFIG_FILE="$ROOT_DIR/_config.yml"

fail() {
  printf 'FAIL: %s\n' "$1" >&2
  exit 1
}

assert_contains() {
  local file=$1
  local text=$2
  local message=$3

  grep -Fq "$text" "$file" || fail "$message"
}

assert_rule_has_property() {
  local selector=$1
  local property=$2

  awk -v selector="$selector" -v property="$property" '
    index($0, selector " {") {
      in_rule = 1
      next
    }
    in_rule && index($0, "}") {
      in_rule = 0
    }
    in_rule && index($0, property) {
      found = 1
    }
    END {
      exit found ? 0 : 1
    }
  ' "$INDEX_FILE" || fail "$selector must include $property"
}

assert_contains "$CONFIG_FILE" "theme: jekyll-theme-minimal" \
  "test assumes the minimal theme is active"
assert_contains "$INDEX_FILE" '<div class="research-homepage">' \
  "homepage wrapper is missing"

assert_rule_has_property "body > .wrapper" "width: auto;"
assert_rule_has_property "body > .wrapper" "max-width: none;"
assert_rule_has_property "body > .wrapper > section" "float: none;"
assert_rule_has_property "body > .wrapper > section" "width: auto;"
assert_rule_has_property ".research-homepage section" "float: none;"
assert_rule_has_property ".research-homepage section" "width: auto;"
assert_rule_has_property ".research-homepage section" "padding-bottom: 0;"

if awk '
  index($0, ".research-homepage {") {
    in_rule = 1
    next
  }
  in_rule && index($0, "}") {
    in_rule = 0
  }
  in_rule && $0 ~ /margin:[[:space:]]*-/ {
    found = 1
  }
  END {
    exit found ? 0 : 1
  }
' "$INDEX_FILE"; then
  fail ".research-homepage must not use negative margins inside the minimal theme layout"
fi

printf 'Homepage theme isolation checks passed.\n'
