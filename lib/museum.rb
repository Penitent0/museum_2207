class Museum
  attr_reader :name,
              :exhibits
  def initialize(name)
    @name = name
    @exhibits = []
  end

  def add_exhibit(exhibit)
    @exhibits << exhibit
  end

  def recommend_exhibits(patron)
    recommended_exhibits = []
    @exhibits.select do |exhibit|
      if patron.interests.include? exhibit.name
        recommended_exhibits << exhibit  
      end 
    end
    recommended_exhibits
  end
end
