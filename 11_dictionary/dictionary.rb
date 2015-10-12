class Dictionary
  attr_accessor :entries

  def initialize
    @entries ||= {}
  end

  def add key, value = nil
    @entries[key] = value
  end

  def keywords
    @entries.keys.sort
  end

  def include? word
    entries.keys.include? word
  end

  def find word
    result = {}
    entries.each do |key, value|
      result[key] = value if key =~ /^#{word}/
    end
    result
  end

  def printable
      entries.map do |key_val|
        %Q{[#{key_val.first}] "#{key_val.last}"}
      end.sort.join("\n")
  end
end
