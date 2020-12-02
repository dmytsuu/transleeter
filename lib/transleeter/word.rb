require 'transleeter/constants'

module Transleeter
  class Word
    def initialize(value)
      @value = value
      @letters = value.split('')
    end

    def transleetable?
      @letters.all? { |letter| Constants::LETTERS.keys.include?(letter) }
    end

    def transleet
      return 'Word cannot be transleeted' unless transleetable?

      @letters.map(&method(:find_letter_match)).join('')
    end

    private

    def find_letter_match(letter)
      Constants::LETTERS.find { |latin, _| latin == letter }.last
    end
  end
end
