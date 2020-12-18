require_relative './methods'
# frozen_string_literal: true

# This is for the booking information

class Bookings
  attr_reader :days, :session

  def initialize(room, days)
    @room = room
    @days = days

  end

  # for the booking
  def display_bookings(user,uni_house)
    puts
    puts $HEADER_LINE
    puts "#{user.name.upcase} 'BOOKING".center($HEADER_LENGTH)
    puts $HEADER_LINE
    puts
    puts Unihouse.new
    puts
    puts $HEADER_LINE
    puts
    puts "Room Type: #{@room.type}"
    @room.display_room
    puts
    puts 'Booking Days:'
    @days.each { |day| puts "     * #{day}" }
    puts
    puts $HEADER_LINE



    # booking cost
    def bookings_price
    @room.price.to_f @days.length
    return
    end
  
end

end
