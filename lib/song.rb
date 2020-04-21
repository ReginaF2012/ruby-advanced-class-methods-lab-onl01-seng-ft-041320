require 'pry'
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
    song = self.new
    self.all << song
    song
  end

  def self.new_by_name(song_name)
    song = self.new
    song.name = song_name
    song
  end

  def self.create_by_name(song_name)
    song = self.create
    song.name = song_name
    song
  end
  
  def self.find_by_name(song_name)
    @all.each do |song|
      if song.name == song.song_name
        song.song_name
    end 
  end 
    
  def self.new_from_filename(filename)
    song_attributes = filename.split("-")
    song_attributes = fiename.split(".")
    song = self.new
    song.name = song_attributes[1]
    song.artist_name = song_attributes[0]
    song
  end
end
