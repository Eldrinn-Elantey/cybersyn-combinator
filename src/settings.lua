local constants = require "scripts.constants"
local NAMES = constants.SETTINGS

data:extend {
  {
    type = "string-setting",
    name = NAMES.LOG_LEVEL,
    setting_type = "startup",
    default_value = "WARN",
    allowed_values = {
      "DEBUG",
      "INFO",
      "WARN",
      "ERROR",
      "DISABLED"
    },
    order = "c[cybersyn]-c[combinator]-l[loglevel]"
  },
  {
    type = "string-setting",
    name = NAMES.CHAT_LOG_LEVEL,
    setting_type = "startup",
    default_value = "ERROR",
    allowed_values = {
      "DEBUG",
      "INFO",
      "WARN",
      "ERROR",
      "DISABLED"
    },
    order = "c[cybersyn]-c[combinator]-l[loglevel]-c[chat]"
  },
  {
    type = "int-setting",
    name = NAMES.SLOT_ROWS,
    setting_type = "startup",
    default_value = 4,
    minimum_value = 1,
    maximum_value = 64,
    order = "c[cybersyn]-c[combinator]-s[slotrows]"
  },
  {
    type = "int-setting",
    name = NAMES.NETWORK_SLOT_COUNT,
    setting_type = "startup",
    default_value = 50,
    minimum_value = 1,
    maximum_value = 100,
    order = "c[cybersyn]-c[combinator]-s[slotcount]-n[network]"
  },
  {
    type = "int-setting",
    name = NAMES.SLOT_COUNT_WAGON,
    setting_type = "startup",
    default_value = 1000,
    minimum_value = 1,
    order = "c[cybersyn]-c[combinator]-s[slotcount]-w[wagon]"
  },
  {
    type = "bool-setting",
    name = NAMES.UPGRADEABLE,
    setting_type = "startup",
    default_value = false,
    order = "c[cybersyn]-c[combinator]-u[upgradeable]"
  },
  {
    type = "bool-setting",
    name = NAMES.EMIT_DEFAULT_REQUEST_THRESHOLD,
    setting_type = "runtime-global",
    default_value = false,
    order = "c[cybersyn]-c[combinator]-e[emit]-d[default]-r[request]-t[threshold]"
  },
  {
    type = "bool-setting",
    name = NAMES.EMIT_DEFAULT_PRIORITY,
    setting_type = "runtime-global",
    default_value = false,
    order = "c[cybersyn]-c[combinator]-e[emit]-d[default]-p[priority]"
  },
  {
    type = "bool-setting",
    name = NAMES.EMIT_DEFAULT_LOCKED_SLOTS,
    setting_type = "runtime-global",
    default_value = false,
    order = "c[cybersyn]-c[combinator]-e[emit]-d[default]-l[locked]-s[slots]"
  },
  {
    type = "bool-setting",
    name = NAMES.USE_STACKS,
    setting_type = "runtime-per-user",
    default_value = false,
    order = "c[cybersyn]-c[combinator]-u[use]-s[stacks]"
  },
  {
    type = "bool-setting",
    name = NAMES.DISABLE_BUILT,
    setting_type = "runtime-per-user",
    default_value = false,
    order = "c[cybersyn]-c[combinator]-d[disable]-b[built]"
  }
}
