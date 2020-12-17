require 'tty-prompt'
require_relative './methods'
# frozen_string_literal: true




class Unihouse
attr_reader :rooms, :name, :contact_number


def initialize
    @name = "unihouse"
    @address = "112 Professors Walk"
    @phone = "1300 unihouse"
    @email = "bookings@unihouse.org.au"
    @rooms = []

end


def Unihouse_infomation
    puts $HEADER_LINE
    puts"#{@name.upcase}" .center{$HEADER_LENGTH}
    $HEADER_LINE
    puts
    contact_info
    puts
    puts $HEADER_LINE
    puts
end

def contact_information
    puts "Address: #{@address}"
    puts "Contact No: #{@phone}"
    puts "Email #{@email}"
end

  
#for adding a room
def add_room(room)
     @room << room
     return self
end


#option to select a room in Unihouse
def select_room

    #display of the room options
    menu = []
    @room. each { |room| menu.push(room.type)}
    

    #this used the tty gem to display the menu displaying the room selected
    selection = TTY::Prompt.new.select("Choose a room type:", menu, cycle: true, marker: '>', echo: false)
    
    @room.each  do |room|
        if room.type == selection 
            return room 
        end


    end
       
 end
    

    



