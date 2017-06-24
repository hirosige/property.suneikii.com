require 'rails_helper'

RSpec.describe AdminHelper, type: :helper do
  it "test setup" do
    controller = Admin::Apartments::ApartmentsController.new
    expect(helper.setup(controller)).to eq("apartments")
  end

  it "test setup" do
    controller = Admin::Apartments::ApartmentsController.new
    helper.setup(controller)

    expect(helper.get_module).to eq("apartments")
  end
end
