class WordFormatter

    def initialize(word)
        @word = word
    end

    def all_caps()
        return @word.upcase
    end

    def camel_case()
        parts = @word.split(" ")
        newWord = ""
        for a in parts
            newWord << a.capitalize()
        end
        return newWord
    end

    def self.all_caps(word)
        return word.upcase
    end

    def self.camel_case(word)
        parts = word.split(" ")
        newWord = ""
        for a in parts
            newWord << a.capitalize()
        end
        return newWord
    end


end
