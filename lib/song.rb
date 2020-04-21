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
    song_attributes = filename.split(/)
 
      song = self.new
      
    end
    people
  end
end
