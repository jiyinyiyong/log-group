
log-group manages logs in groups
------

### Usage

```
npm install log-group
```

Import this function in CoffeeScript: 

```coffee
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
```

Or you may read the source, although it's too short:

```coffee
g = (name, args...) ->
  if g.attrs[name]?
    if g.attrs[name] then console.log args...
  else
    console.log ":::#{name}::: is not implemented in log-group"

g.attrs = {}
g.set = (name, status) -> g.attrs[name] = status

exports.g = g
```

### What I want

Suppose you are debugging Node, whose main tool is `console.log`.  
After debugging, you should comment out all logs.  
Doing that by hand is trival(?), so use a function to manage it.  