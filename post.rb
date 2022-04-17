class Post

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
    file = File.new(file_path, "w^UTF-8")

    for item in to_strings do
      file.puts(item)
    end

    file.close
  end

  def file_path
    currrent_path = File.dirname(_FILE_)

    file_name = @created_at.strftime("@{self.class.name}_%Y-%m-%d_%H-%M-%S.txt")

    return currrent_path + "/" + file_name
  end
end