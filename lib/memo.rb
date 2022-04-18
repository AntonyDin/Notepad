# Класс «Заметка»
class Memo < Post

  # read_from_console спрашивает у пользователя текст заметки все строки (до слова end) и записывает их в массив @text.
  def read_from_console
    puts "Новая заметка (все, что пишите до \'end\'):"

    @text = []
    line = nil # Для старта цикла запишем в переменную line nil

    # Пока в переменной line не окажется (пока пользователь не введет) слово
    # «end», крутимся в цикле и считываем строку за строкой в массив @text.
    until line == 'end'
    line = STDIN.gets.chomp
    @text << line

    @text.pop # Удалим последний элемент из массива @text
    end
  end

  def to_strings
    time_string = "Создано #{@created_at.strftime("%Y.%m.%d, $H:%M:%S")} \n\r \n\r"


    return @text.unshift(time_string) # Возвращаем массив @text с добавление в начало (методом массива unshift)
  end
end