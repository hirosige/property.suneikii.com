require('./db/seeds/seed_manager.rb')
require('./db/seeds/entities/country.rb')
require('./db/seeds/entities/province.rb')
require('./db/seeds/entities/district.rb')
require('./db/seeds/entities/subdistrict.rb')
require('./db/seeds/entities/room_type.rb')
require('./db/seeds/entities/provider.rb')
require('./db/seeds/entities/apartment.rb')
require('./db/seeds/entities/land_category.rb')
require('./db/seeds/entities/land.rb')

class Exec
  CREATING_PTS = 1000

  def exec
    SeedManager.exec(CountrySeeds.new)
    SeedManager.exec(ProvinceSeeds.new)
    SeedManager.exec(DistrictSeeds.new)
    SeedManager.exec(SubDistrictSeeds.new)
    SeedManager.exec(RoomTypeSeeds.new)
    SeedManager.exec(ProviderSeeds.new)
    SeedManager.exec(ApartmentSeeds.new(CREATING_PTS))
    SeedManager.exec(LandCategorySeeds.new)

    # land = LandSeeds.new(1000)
    # land.exec
  end
end

exec = Exec.new
exec.exec