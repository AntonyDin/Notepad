# Родительский класс "Запись", тут мы определим основные методы и свойства
class Post
  def self.post_types # post_types, возвращает всех детей класса Post в виде массива классов.
    [Memo, Link, Task]
  end

  def self.create(type_index) # create создает объект, получая список с помощью post_types, объявленного выше.
    return post_types[type_index].new
  end

  def initialize
    @created_at = Time.now
    @text = nil
  end

  def read_from_console
    #to_do
  end

  def to_strings
    #to_do
  end

  def save
    file = File.new(file_path, "w:UTF-8")  # открываем файл на запись

    for item in to_strings do
      file.puts(item)
    end

    file.close
  end

  def file_path
    currrent_path = File.dirname(__FILE__ )

    file_name = @created_at.strftime("#{self.class.name}_%Y-%m-%d_%H-%M-%S.txt")

    return currrent_path + "/" + file_name
  end
end