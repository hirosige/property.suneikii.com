class RoomTypeSeeds
  attr_accessor :name

  include Printable

  def initialize
    @name = "RoomType"
    RoomType.destroy_all
  end

  def exec
    to_string

    RoomType.create( name: 'Studio' )
    RoomType.create( name: '1 Bed Room' )
    RoomType.create( name: '2 Bed Rooms' )
    RoomType.create( name: '3 Bed Rooms' )
    RoomType.create( name: '4 Bed Rooms' )
    RoomType.create( name: '5 Bed Rooms' )

    to_string(false)
  end
end