class Room

  attr_reader :room_name, :max_cap

  def initialize(room_name, max_cap)
    @room_name = room_name
    @max_cap = max_cap
    @songs_in_room1 = []
    @songs_in_room2 = []
    @songs_in_room3 = []

  end

  def count_songs_in_room1
    @songs_in_room1.count
  end

  def add_song_to_room1(song)
    @songs_in_room1 << song
  end

  def count_songs_in_room2
    @songs_in_room2.count
  end

  def add_song_to_room2(song)
    @songs_in_room2 << song
  end

  def count_songs_in_room3
    @songs_in_room3.count
  end

  def add_song_to_room3(song)
    @songs_in_room3 << song
  end





end
