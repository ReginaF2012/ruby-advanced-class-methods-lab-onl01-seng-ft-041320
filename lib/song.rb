class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    self = self.new
    @@all << self.new
  
  end 
  
  def self.new_by_name
    name = Song.new
    name = name.name
  end 

  def self.new_from_filename(filename)
    rows = csv_data.split("\n")
    people = rows.collect do |row|
      data = row.split(", ")
      name = data[0]
      age = data[1]
      company = data[2]
 
      song = self.new
      
    end
    people
  end
end
