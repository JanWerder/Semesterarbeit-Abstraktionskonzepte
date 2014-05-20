local liste = {}
function first(tbl)
   return tbl[1]
end

function rest(tbl)
  t = tbl
  table.remove(t, 1)
  return t
end

function cons(tbl1, tbl2)
  t = {}
  table.insert(t, tbl1)
  table.insert(t, tbl2)
  return t
end

function append(tbl1, tbl2)
  t = {}
  for k,v in ipairs(tbl1) do
    table.insert(t, v)
  end
  for k,v in ipairs(tbl2) do
    table.insert(t, v)
  end
  return t
end

liste.append = append
liste.cons = cons
liste.rest = rest
liste.first = first
return liste