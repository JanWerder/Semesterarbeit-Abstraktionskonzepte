local liste = {}

--Gibt das erste Element einer Liste zurück
--Bei einer leeren Liste ist die leere Liste das Resultat
function first(tbl)
  if preTable(tbl) then
    if #tbl > 0 then
      return tbl[1]
    else
      return {}
    end
  else
    return listenError
  end
end

--Entfernt das erste Element einer Liste und gibt die Restmenge zurück
--Bei einer leeren Liste ist die leere Liste das Resultat
function rest(tbl)
  local t = tbl
  if preTable(t) then
      table.remove(t, 1)
      return t
  else
    return listenError
  end
end

--Verkettet eine beliebige Anzahl von Listen in einer neuen Liste
--Falls ein Paramter keine Liste ist, wird ein Fehler geworfen
function cons(...)
  local args = {...}
  for k,v in ipairs(args) do
    if not preTable(v)then
      return listenError
    end
   end
  return args
end

--Verkettet die Anzahl einer beliebigen Anzahl von Listen miteinander
--Falls ein Paramter keine Liste ist, wird ein Fehler geworfen
function append(...)
    local args = {...}
    local t = {}
    for k1,v1 in ipairs(args) do
      if preTable(v1)then
        for k2,v2 in ipairs(v1) do 
          table.insert(t,v2)
        end
      else
        return listenError
      end
    end
    return t
end

function table.empty (self)
    for _, _ in pairs(self) do
        return false
    end
    return true
end

--Reduziert alle Inhalte auf eine einfache Liste
--Falls ein Parameter keine Liste ist, wird er trotzdem hinzugefügt
function flatten(args)
    if preTable(args) == false then
      return args
    end
    if table.empty(args) then
      return args
    elseif not preTable(first(args)) then
      return append({first(args)}, flatten(rest(args)))
    else
      return append(flatten(first(args)), flatten(rest(args)))
    end
end

--Funktion zum überprüfen der Precondition
--Gibt true zurück falls das geprüfte Element eine Liste ist
function preTable (tbl)
  if type(tbl) == type(table) then
    return true
  else
    return false
  end
end

--Error Codes
listenError = 'Parameter ist keine Liste'

--Funktionsbindung
liste.flatten = flatten
liste.append = append
liste.cons = cons
liste.rest = rest
liste.first = first

return liste