local liste = {}
function first(tbl)
  if preTable(tbl) then
   return tbl[1]
  else
    return listenError
  end
end

function rest(tbl)
  if preTable(tbl) then
    t = tbl
    table.remove(t, 1)
    return t
  else
    return listenError
  end
end

function cons(tbl1, tbl2)
  if preTable(tbl1) and preTable(tbl2) then
    t = {}
    table.insert(t, tbl1)
    table.insert(t, tbl2)
    return t
  else
    return listenError
  end
end

function append(tbl1, tbl2)
  if preTable(tbl1) and preTable(tbl2) then
    t = {}
    for k,v in ipairs(tbl1) do
      table.insert(t, v)
    end
    for k,v in ipairs(tbl2) do
      table.insert(t, v)
    end
    return t
  else
    return listenError
  end
end

function preTable (tbl)
  if type(tbl) == type(table) then
    return true
  else
    return false
  end
end

listenError = 'Parameter ist keine Liste'
liste.append = append
liste.cons = cons
liste.rest = rest
liste.first = first
return liste