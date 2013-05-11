
g = (name, args...) ->
  if g.attrs[name]?
    if g.attrs[name] then console.log args...
  else
    console.log ":::#{name}::: is not implemented in log-group"

g.attrs = {}
g.set = (name, status) -> g.attrs[name] = status

exports.group = g