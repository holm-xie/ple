[a, b, c] = [1, 2, 3]      # globals

bad = ->
  a = 10                   # clobbers global a

okay = ->
  ((b) -> b = 20)()        # writes to local b

better = ->
  do (w=30) ->             # writes to local c

bad(); okay(); better()
console.log a, b, c        # 10 2 3