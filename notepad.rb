require_relative 'lib/post.rb'
require_relative 'lib/link.rb'
require_relative 'lib/memo.rb'
require_relative 'lib/task.rb'

puts "Здравствуй, что хочешь записать в блокнот"

# В choices запишеи массив типов записей, которые можно создать, вызвав у класса Post метод post_types
choices = Post.post_types

# Для начала цикла запишем в переменную choice (куда позже будем складывать выбор пользователя) значение -1
choice = -1

# Пока юзер не выбрал правильно (от 0 до длины массива вариантов), спрашиваем
# у него число и выводим список возможных вариантов для записи.
until choice >= 0 && choice < choices.size

  choices.each_with_index do |type, index|
    puts "\t#{index}. #{type}"
  end

  # Запишем выбор пользователя в переменную choice
  choice = STDIN.gets.chomp.to_i
end

# Как только выбор сделан, мы можем создать запись нужного типа, передав выбор
# пользователя в статический метод create класса Post, который мы фактически
# используем как конструктор.
entry = Post.create(choice)

# Сейчас в переменной entry лежит один из детей класса Post, какой именно,
# определилось выбором пользователя, переменной choice. Но мы не знаем какой,
# и обращаемся с entry как с объектом класса Post, этого оказывается достаточно
# так как у любого наследника класса Post должны быть реализованы методы
# read_from_console и save.

# Просим пользователя ввести пост (каким бы он ни был)
entry.read_from_console

# Сохраняем пост в файл
entry.save

# Сообщаем пользователю о том, что его запись сохранена в файл.
puts 'Ваша запись сохранена!'
