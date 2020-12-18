# frozen_string_literal: true

# the user is the main class object which we need information from to enter into our bookings.

class User
  attr_accessor :booking, :name
  attr_reader :contact

  def initialize(name, contact)
    @name = name
    @contact = contact
    @booking = []
  end
end
