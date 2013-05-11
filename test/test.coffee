
g = require("../lib/").group

g.set "demo", on

g "demo", "when on"

g.set "demo", off

g "demo", "when off"

g "another", "not implemented"