class Book
  attr_accessor :title

  def title=(new_title)
    title_words = new_title.split(' ')
      title_words = [title_words[0].capitalize] +
      title_words[1..-1].map do |word|
        little_words = %w{a an and the in of}
         (little_words.include? word) ? word : word.capitalize
      end
    @title = title_words.join(' ').to_s
  end
end
