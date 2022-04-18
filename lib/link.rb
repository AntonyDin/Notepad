# Класс «Ссылка»
class Link < Post
  def initialize
    super

    @url = nil
  end

  # read_from_console спрашивает у пользователя адрес ссылки и её описание, которые мы записываем в @url и @text
  def read_from_console
    puts "Адрес ссылки:"
    @url = STDIN.gets.chomp

    puts "Что за ссылка?"
    @text = STDIN.gets.chomp
  end
  # to_string для ссылки возвращает массив: адрес ссылки, описание ссылки и строка с датой создания ссылки
  def to_strings
    time_string = "Создано #{@created_at.strftime("%Y.%m.%d, $H:%M:%S")} \n\r \n\r"

    return [@url, @text, time_string]
  end
end