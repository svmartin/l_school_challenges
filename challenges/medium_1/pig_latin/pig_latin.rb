class PigLatin
  def self.translate(string)
    string.split.each do |word|
      if word.scan(/^[aeiou]|^(y|x)[^aeiou]+/).empty?
        word << word.slice!(/^[^aeiouq]*(qu)*/)
      end
      word << "ay"
    end.join(' ')
  end # def/method end
end # class end
