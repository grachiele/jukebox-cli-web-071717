songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  response = gets.chomp
  if songs.include?(response)
    puts "Playing #{response}"
  elsif (0..songs.length).include?(response.to_i - 1)
    puts "Playing #{songs[response.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_with_index do |song, idx|
    puts "{idx+1}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  user = gets.chomp

  while user != "exit"
    user = gets.chomp
    if user == "play"
      play(songs)
    elsif user == "help"
      help
    elsif user == "list"
      list(songs)
    end
  end

  exit_jukebox

end
