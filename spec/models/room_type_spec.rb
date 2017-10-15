# == Schema Information
#
# Table name: room_types
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe RoomType, type: :model do
  describe 'validates false' do
    it 'required name' do
      expect(build(:empty_room_type)).not_to be_valid
    end

    it 'duplicate name' do
      create(:room_type_test)
      expect(build(:room_type_test)).not_to be_valid
    end
  end

  describe 'validates true' do
    it 'name is input' do
      expect(build(:room_type_test)).to be_valid
    end

    it 'can continuous register' do
      create(:room_type_test)
      expect(build(:room_type_test2)).to be_valid
    end
  end
end
