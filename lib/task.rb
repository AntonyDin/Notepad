require 'date'

# Класс «Задача»
class Task < Post
  def initialize
    super
    # @due_date — время, к которому задачу нужно выполнить
    @due_date = Time.now
  end

  # read_from_console спрашивает у пользователя текст задачи (что нужно сделать)
  def read_from_console
    puts "Что нужно сделать?"
    @text = STDIN.gets.chomp

    puts "К какомц числу? Укажите дату в формате ДД.ММ.ГГГГ"
    input = STDIN.gets.chomp

    @due_date = Date.parse(input) # объект класса Date мы получим из строки с помощью метода класса Date (стат. метода)
  end

  # to_string должен возвращает строку с дедлайном, описание задачи и дату создания задачи
  def to_strings
    time_string = "Создано #{@created_at.strftime("%Y.%m.%d, $H:%M:%S")} \n\r \n\r"
    deadline = "Крайний срок: #{@due_date.strftime('%Y.%m.%d')}"

    return [deadline, @text, time_string]
  end
end