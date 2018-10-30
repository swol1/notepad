class Link < Post
  def initialize
    super

    @url = ""
  end

  def read_from_console
    puts "Введите адрес ссылки"
    @url = STDIN.gets.chomp

    puts "Напишите пару слов о том, куда ведет ссылка"
    @text = STDIN.gets.chomp
  end

  def to_strings
     time_string = @created_at.strftime("%d.%m.%Y, %H:%M")
     [@url, @text, time_string]
  end
end
