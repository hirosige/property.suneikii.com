class CountrySeeds
  attr_accessor :name

  include Printable

  def initialize
    @name = "Country"
    Country.destroy_all
  end

  def exec
    to_string

    Country.create(
        original_id: 'jp',
        name_ja: '日本',
        name_th: 'ประเทศญี่ปุ่น',
        name_en: 'Japan'
    )

    Country.create(
        original_id: 'th',
        name_ja: 'タイ',
        name_th: 'ประเทศไทย',
        name_en: 'Thailand'
    )

    Country.create(
        original_id: 'us',
        name_ja: 'アメリカ',
        name_th: 'สหรัฐอเมริกา',
        name_en: 'United States'
    )

    Country.create(
        original_id: 'cn',
        name_ja: '中国',
        name_th: 'ประเทศจีน',
        name_en: 'China'
    )

    to_string(false)
  end
end