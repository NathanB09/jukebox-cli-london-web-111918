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
  p <<-help_message
  I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits the program
  help_message
end

def list(songs)
  songs.each_with_index {|song, index| p "#{index + 1}. #{song}"}
end

def play(songs)
  p "Please enter a song name or number:"
  user_input = gets.chomp
  songs.each_with_index do |song, index|
    if user_input == song || user_input == (index + 1).to_s
      p "Playing #{song}"
    else
      p "Invalid input, please try again"
    end
  end
end

def exit_jukebox
  p "Goodbye"
end
