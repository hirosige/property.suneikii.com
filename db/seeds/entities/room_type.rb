class RoomTypeSeeds
  attr_accessor :name

  include Printable

  def initialize
    @name = "RoomType"
    RoomType.destroy_all
  end

  def exec
    to_string

    RoomType.create( name: '1R' )
    RoomType.create( name: '1K' )
    RoomType.create( name: '1DK' )
    RoomType.create( name: '1LDK' )
    RoomType.create( name: '2K/2DK' )
    RoomType.create( name: '2LDK' )
    RoomType.create( name: '3K/3DK' )
    RoomType.create( name: '3LDK' )
    RoomType.create( name: '4K/4DK' )
    RoomType.create( name: '4LDK' )
    RoomType.create( name: '5K/5DK' )
    RoomType.create( name: '5LDK' )

    to_string(false)
  end
end