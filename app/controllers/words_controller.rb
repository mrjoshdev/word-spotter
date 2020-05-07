class WordsController < ApplicationController

  def index

      @words = Word.all
      @noun = "noun"
      @verb = "verb"
      @article = "article"

      @noun_arr = []
      @verb_arr = []
      @article_arr = []
      @input = "abcd"
      @input_array = @input.chars
      @output = []
      num_arr = 0

       @words.each do |word|
         if word.category === @noun
           @noun_arr << word.spelling
         elsif word.category === @verb
           @verb_arr << word.spelling
         elsif word.category === @article
           @article_arr << word.spelling
         else
         end
       end

      while num_arr < @input_array.length

        @noun_arr.each do |noun|
          if noun.start_with?(@input_array[num_arr]) && @input.include?(noun)
            @output << noun
          end
        end

        @verb_arr.each do |verb|
          if verb.start_with?(@input_array[num_arr]) && @input.include?(verb)
            @output << verb
          end
        end

        @article_arr.each do |article|
          if article.start_with?(@input_array[num_arr]) && @input.include?(article)
            @output << article
          end
        end
        num_arr += 1
      end

  end
end
