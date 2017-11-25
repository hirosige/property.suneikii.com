module AreaSearchable
  extend ActiveSupport::Concern

  module ClassMethods
    def province_list(country_id)
      where(country_id: country_id)
          .where(:status => :public)
          .pluck(:province_id)
          .uniq
    end

    def district_list(province_id)
      where(province_id: province_id)
          .where(:status => :public)
          .pluck(:district_id)
          .uniq
    end

    def subdistrict_list(district_id)
      where(district_id: district_id)
          .where(:status => :public)
          .pluck(:subdistrict_id)
          .uniq
    end
  end

end