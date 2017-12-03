class LandCategorySeeds
  attr_accessor :name

  include Printable

  def initialize
    @name = "Land Category"
    LandCategory.destroy_all
  end

  def exec
    to_string

    LandCategory.create( name: 'For Rice Field' )
    LandCategory.create( name: 'For Paddy Field' )
    LandCategory.create( name: 'For Residence' )
    LandCategory.create( name: 'For School Usage' )
    LandCategory.create( name: 'For Rails Usage' )
    LandCategory.create( name: 'For Salt Field' )
    LandCategory.create( name: 'For Spa' )
    LandCategory.create( name: 'Swamps' )
    LandCategory.create( name: 'Mountain Forest' )
    LandCategory.create( name: 'Farm' )
    LandCategory.create( name: 'Wilderness' )
    LandCategory.create( name: 'Graveyard' )
    LandCategory.create( name: 'Precincts Land' )
    LandCategory.create( name: 'Canal Site' )
    LandCategory.create( name: 'Aquaduct' )
    LandCategory.create( name: 'Aquaduct for Irrigation' )
    LandCategory.create( name: 'Pond' )
    LandCategory.create( name: 'Embankment' )
    LandCategory.create( name: 'Aquaduct for Factory' )
    LandCategory.create( name: 'Reserved Forest' )
    LandCategory.create( name: 'Public Road' )
    LandCategory.create( name: 'Park' )
    LandCategory.create( name: 'Hybrid Land' )

    to_string(false)
  end
end