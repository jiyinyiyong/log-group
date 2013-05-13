
g = (name, args...) ->
  if g.attrs[name]?
    if g.attrs[name] then console.log "#{name}\t>>>\t", args...
  else
    console.log "#{name}\t:::\t is not implemented in log-group"

g.attrs = {}
g.set = (name, status) -> g.attrs[name] = status

exports.g = g