require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../guests.rb')
require_relative('../songs.rb')
require_relative('../rooms.rb')
require_relative('../bar.rb')

class TestBar < Minitest::Test

def setup

  @bar = [{
    name: "Guiness",
    price: 3,
  },
  { name: "Whiskey",
    price: 2,
  },
  { name: "Beer",
    price: 3,
  },
  { name: "Vodka",
    price: 1,
    }]

end

end
