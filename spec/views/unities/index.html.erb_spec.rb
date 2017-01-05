require 'rails_helper'

RSpec.describe "unities/index", type: :view do
  before(:each) do
    assign(:unities, [
      Unity.create!(
        :name => "Name",
        :street => "Street",
        :number => "Number",
        :neighborhood => "Neighborhood",
        :city => "City",
        :state => "State",
        :phone_1 => "Phone 1",
        :phone_2 => "Phone 2",
        :school => nil,
        :active => false
      ),
      Unity.create!(
        :name => "Name",
        :street => "Street",
        :number => "Number",
        :neighborhood => "Neighborhood",
        :city => "City",
        :state => "State",
        :phone_1 => "Phone 1",
        :phone_2 => "Phone 2",
        :school => nil,
        :active => false
      )
    ])
  end

  it "renders a list of unities" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Street".to_s, :count => 2
    assert_select "tr>td", :text => "Number".to_s, :count => 2
    assert_select "tr>td", :text => "Neighborhood".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Phone 1".to_s, :count => 2
    assert_select "tr>td", :text => "Phone 2".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
