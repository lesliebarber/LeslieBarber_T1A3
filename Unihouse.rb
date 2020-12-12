require 'tty-prompt'
require_relative




class Unihouse
attr_reader :rooms, :name, :contact_number


def initialize
    @name = "Unihouse"
    @address = "112 Professors Walk"
    @phone = "1300 unihouse"
    @email = "bookings@unihouse.org.au"
    @rooms = []

end
