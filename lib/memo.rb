class Memo < Post
  def read_from_console
    puts "Я сохраню всё, что ты напишешь до строчки \"end\" в файл."

    line = nil

    until line == "end" do
      line = STDIN.gets.chomp
      @text << line
    end

    @text.pop
  end

  def to_strings
    time_string = "Создано #{@created_at.strftime("%d.%m.%Y, %H:%M:%S")}\n\r"

    @text.unshift(time_string)
  end
end
