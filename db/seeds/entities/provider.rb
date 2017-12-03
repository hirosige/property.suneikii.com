class ProviderSeeds
  attr_accessor :name

  include Printable

  def initialize
    @name = "Provider"
    Provider.destroy_all
  end

  def exec
    to_string

    Provider.create( name: 'sample provider' )

    to_string(false)
  end
end