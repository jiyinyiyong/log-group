
g = require("../lib/").g

g.attrs =
  default: yes
  none: no

g "default", "default log"
g "none", "no log"

g.set "demo", on

g "demo", "when on"

g.set "demo", off

g "demo", "when off"

g "another", "not implemented"