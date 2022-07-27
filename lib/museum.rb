class Museum
  attr_reader :name,
              :exhibits,
              :patrons
  def initialize(name)
    @name = name
    @exhibits = []
    @patrons = []
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

  def admit(patron)
    @patrons << patron
  end

  def patrons_by_exhibit_interest
    exhibits = Hash.new([])
    @exhibits.each do |exhibit|
      exhibits[exhibit] = []
    end
    exhibits.each do |exhibit, patrons|
      @patrons.each do |patron|
        exhibits[exhibit] << patron if patron.interests.include? exhibit.name
      end
    end
    exhibits
  end
end
