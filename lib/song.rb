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
    @@all.find do |song|
      if song.name == song_name
        song
      end
    end 
  end 
  
  def self.find_or_create_by_name(song_name)
    if self.find_by_name(song_name)
        self.find_by_name(song_name)
    else
        self.create_by_name(song_name)
    end 
  end 
    
    def self.alphabetical
      @@all.sort_by{|song| song.name}
    end
    
  def self.new_from_filename(filename)
    song_attributes = filename.split(".mp3").join(" ").split(" - ")
    song = self.new
    song.name = song_attributes[1]
    song.artist_name = song_attributes[0]
    song
  end
  
  def self.create_from_filename(filename)
    song = self.new_from_filename(filename)
    song.save
    song
  end
  
  def self.destroy_all
    @@all.clear
    @@all
  end 
end
