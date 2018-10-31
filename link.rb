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

  def to_db_hash
    return super.merge(
      {
        'text' => @text,
        'url' => @url
      }
    )
  end

  def load_data(data_hash)
    super(data_hash)
    @url = data_hash['url']
  end
end
