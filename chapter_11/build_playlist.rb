require 'fileutils'

def write_fake_music_library
  genres  = ['Rock', 'Hip Hip', 'Country', 'Classical']
  artists = ['artist_1', 'artist_2', 'artist_3', 'artist_4']
  albums  = ['album_1', 'album_2', 'album_3', 'album_4']
  songs   = ['song_1.mp3', 'song_2.mp3', 'song_3.mp3', 'song_4.mp3']

  dir_structure = genres.product(artists, albums, songs).collect do |el|
    el = 'music_library/' + el.join('/')
  end

  dir_structure.each do |song_file|
    unless File.exists?(song_file)
      FileUtils.mkdir_p(File.dirname(song_file))
      File.open(song_file, 'w') do |f|
        f.write('fake music file')
      end
    end
  end
end

def build_playlist
  files = Dir['music_library/**/*.mp3']

  File.open('playlist.m3u', 'w') do |f|
    files.each { |el| f.write("#{el}\n") }
  end
end

# I have no music local, so build a fake library
write_fake_music_library

build_playlist