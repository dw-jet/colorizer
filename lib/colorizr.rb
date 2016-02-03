class String
  # Set up parallel arrays for colors and format codes
  @@colors = [:black, :red, :green, :yellow, :blue, :pink,
              :light_blue, :light_grey, :white]
  @@format_numbers = [30, 31, 32, 33, 34, 35, 36, 37, 97]

  def self.colors
    @@colors
  end

  def self.sample_colors
    # Using send method to call the dynamically generated functions
    @@colors.each do |color|
      puts "This is " + "#{color}".send(color)
    end
  end

  def self.create_colors
    @@colors.each_with_index do |color, index|
      self.class_eval %Q{
        def #{color}
          "\e[#{@@format_numbers[index]}m" + self + "\e[0m"
        end
      }
    end
  end
end
String.create_colors
