class Artist

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select do |s|
            s.artist == self
        end
    end

    def new_song(name, genre)
        Song.new(name,self,genre)
    end


    def genres
        songs.map do |s|
            s.genre
        end
    end


end