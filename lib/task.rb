require "date"

class Task < Post
  def initialize
    super

    @due_date = Time.now
  end

  def read_from_console
    puts "Что вам необходимо сделать?"
    @text = STDIN.gets.chomp

    puts "До какого числа вам нужно это сделать?"
    puts "Укажите дату в формате ДД.ММ.ГГГГ, например 12.05.2003"
    input = STDIN.gets.chomp

    @due_date = Date.parse(input)
  end

  def to_strings
    deadline = "Сделать до #{@due_date.strftime("%d.%m.%Y")}"
    time_string = "Создано: #{@created_at.strftime("%d.%m.%Y, %H:%M")} \n\r"

    [deadline, @text, time_string]
  end
end
