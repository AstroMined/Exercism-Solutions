=begin
Write your code for the 'Resistor Color Duo' exercise in this file. Make the tests in
`resistor_color_duo_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/resistor-color-duo` directory.
=end

class ResistorColorDuo
    def ResistorColorDuo.value(colors)
        @colors = colors
        @color_one = @colors[0].capitalize().to_sym
        @color_two = @colors[1].capitalize().to_sym
        @color_to_int = {Black: "0",
        Brown: "1",
        Red: "2",
        Orange: "3",
        Yellow: "4",
        Green: "5",
        Blue: "6",
        Violet: "7",
        Grey: "8",
        White: "9"}
        (@color_to_int[@color_one] + @color_to_int[@color_two]).to_i
    end
end