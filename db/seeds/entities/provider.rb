class ProviderSeeds
  def initialize
    Provider.destroy_all
  end

  def exec
    Provider.create( name: 'sample provider' )
  end
end