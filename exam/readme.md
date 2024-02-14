Выполнить следующие задания:

1. Напишите функцию partitionN :: [a] -> Int ->[[a]], которая разбивает заданный список на указанное количество подсписков. N-1 подсписков должны иметь одинаковую длину,последний элемент списка списков может содержать меньшее количество элементов.Предусмотреть контроль входных данных.

Например partitionN [1,2,3,4,5,6,7] 3 даст результат [[1,2,3],[4,5,6],[7]]
         partitionN [1,2,3,4,5,6,7] 4 даст результат [[1,2],[3,4],[5,6],[7]]

2. Напишите функцию elemIndices :: Eq a => a -> [a] -> [Int], которая находит, под какими индексами в списке встречается заданный элемент.

3. Напишите функцию, строящую список подсписков чисел: в первом подсписке будут степени единицы, во втором степени двойки, в третьем - тройки и так далее:

[[1,1,1,...],[2,4,8,...],[3,9,27 ,...],...]

Количество элементов в подсписках, а также максимальное число, участвующее в образовании подсписков степеней числа, являются параметрами функции.

Для предложенного примера [[1,1],[2,4],[3,9 ],[4,16]] количество элементов в подсписках= 2, мак число=4.

4. Напишите функцию, которая читает входной текстовый файл и выводит в выходной файл пары (слово:число), где слово - есть каждое уникальное слово файла, а число - количество вхождений этого слова. Пары должны быть отсортированы по убыванию чисел.