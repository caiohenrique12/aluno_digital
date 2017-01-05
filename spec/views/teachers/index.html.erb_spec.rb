require 'rails_helper'

RSpec.describe "teachers/index", type: :view do
  before(:each) do
    assign(:teachers, [
      Teacher.create!(
        :name => "Name",
        :sex => 2,
        :phone_1 => "Phone 1",
        :phone_2 => "Phone 2",
        :registration => "Registration",
        :active => false
      ),
      Teacher.create!(
        :name => "Name",
        :sex => 2,
        :phone_1 => "Phone 1",
        :phone_2 => "Phone 2",
        :registration => "Registration",
        :active => false
      )
    ])
  end

  it "renders a list of teachers" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Phone 1".to_s, :count => 2
    assert_select "tr>td", :text => "Phone 2".to_s, :count => 2
    assert_select "tr>td", :text => "Registration".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
