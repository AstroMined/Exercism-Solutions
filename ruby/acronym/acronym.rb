=begin
Write your code for the 'Acronym' exercise in this file. Make the tests in
`acronym_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/acronym` directory.
=end

class Acronym
    def Acronym.abbreviate(phrase)
        @phrase = phrase
        @phrase.split(/ |-/).map { |str| str[0] }.join.upcase
    end
end