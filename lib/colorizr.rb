class String
  COLORS = [{ name: :black, code: 30 }, { name: :red, code: 31 },
            { name: :green, code: 32 }, { name: :yellow, code: 33 },
            { name: :blue, code: 34 }, { name: :pink, code: 35 },
            { name: :light_blue, code: 36 }, { name: :light_grey, code: 37 },
            { name: :white, code: 97 }].freeze

  def self.colors
    color_names = []
    COLORS.each do |color|
      color_names << color[:name]
    end
    color_names
  end

  def self.sample_colors
    # Using send method to call the dynamically generated functions
    COLORS.each do |color|
      puts "This is " + "#{color[:name]}".send(color[:name])
    end
  end

  def self.create_colors
    COLORS.each do |color|
      send(:define_method, color[:name]) do
        "\e[#{color[:code]}m" + self + "\e[0m"
      end
    end
  end
end
String.create_colors
