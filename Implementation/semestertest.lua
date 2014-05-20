liste = {}
liste = require('semesteraufgabe')
inspect = require('inspect')

firstTable = {1,2,3}
print('First: ' .. liste.first(firstTable))

restTable = {'A','B','C'}
restTable = liste.rest(restTable)
print('Rest: ' .. inspect(restTable))

consTable1 = {{'A'},'B'}
consTable2 = {'C','D'}
consTable = liste.cons(consTable1, consTable2)
print('Cons: ' .. inspect(consTable))

appendTable1 = {{'A'},'B'}
appendTable2 = {'C','D'}
appendTable = liste.append(appendTable1, appendTable2)
print('Append: ' .. inspect(appendTable))
