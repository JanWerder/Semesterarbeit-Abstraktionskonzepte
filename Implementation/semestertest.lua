liste = {}
liste = require('semesteraufgabe')
inspect = require('inspect')

print('First: ' .. inspect(liste.first({'A','B'})))

print('Rest: ' .. inspect(liste.rest({'A','B','C'})))

print('Cons: ' .. inspect(liste.cons({{'A'},'B',2}, {'C','D'})))

print('Append: ' .. inspect(liste.append({{'A'},'B'}, {'C','D'})))

print('Flatten: ' .. inspect(liste.flatten({'Q',{{'A'}},'B','C','D'})))