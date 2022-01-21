class Phrase
  def initialize(phrase)
    @phrase = phrase
    @phrase.gsub!(/\s+/, ' ')
    @phrase.gsub!(/,/, ' ')
    @phrase.gsub!(/[:!&@$%^&".]/, '')
    @phrase.gsub!(" '", ' ')
    @phrase.gsub!("' ", ' ')
    @phrase.downcase!
    @words = @phrase.split
  end

  def word_count
    @counts = {}
    for @word in @words do
      if @counts.key?(@word)
        @counts[@word] += 1
      else
        @counts[@word] = 1
      end
    end
    @counts
  end
end
