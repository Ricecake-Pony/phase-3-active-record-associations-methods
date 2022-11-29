class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
    # return the number of songs in a genre
  end

  def artist_count
    self.artists.count
    # return the number of artists associated with the genre
  end

  def all_artist_names
    # self.artists.map do |artist| 
    #   artist.name
    # end
    # return an array of strings containing every musician's name
    #How can you use pry on this thing???? WTF self never works in pry!
    # You can try Genre.last to get a sample to mess around with. BUT Genre.last.artists.name doesnt work... => "Artist" Genre.all.artists doesnt work. Use iteration! How can you figure out the best time to use iteration vs AR methods?
    # AR method: 
    self.artists.pluck(:name)

  end
end
