# frozen_string_literal: true

require 'tty-prompt'

$HEADER_LINE = '__________________________________________________'
$HEADER_LENGTH = $HEADER_LINE.length

def back_main_menu
  puts "\n\n Press any keys to return to the main menu"
  $stdin.getch
  system 'clear'
  puts $HEADER_LINE
  puts 'loading' .upcase.center($HEADER_LENGTH)
  puts $HEADER_LINE
  puts

  # puts string[0, i].center($HEADER_LENGTH)
  # sleep(0.5)
end

def welcome(uni_house)
  puts
  puts $HEADER_LINE
  puts 'Welcome to '.center($HEADER_LENGTH)
  puts "#{uni_house.name} #uni_house!.center($HEADER_LENGTH)"
  puts $HEADER_LINE
  puts
end

def new_booking
  system 'clear'
  puts
  puts $HEADER_LINE
  puts 'Please create a new booking'.upcase.center($HEADER_LENGTH)
  puts $HEADER_LINE
  puts
end

def view_rooms
  system 'clear'
  puts
  puts $HEADER_LINE
#   puts"#{view_rooms.upcase.center($HEADER+LENGTH)}"
end

def room_name(room_name)
  system 'clear'
  puts
  puts $HEADER_LINE
  puts "#{room_name }"
  puts $HEADER_LINE

  
end
def select_days_selection(day_selection)
    system 'clear'
    puts $HEADER_LINE
    puts "#{day_selection}"
end