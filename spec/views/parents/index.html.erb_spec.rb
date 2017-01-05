require 'rails_helper'

RSpec.describe "parents/index", type: :view do
  before(:each) do
    assign(:parents, [
      Parent.create!(
        :name => "Name",
        :cpf => "Cpf",
        :age => "Age",
        :sex => 2,
        :street => "Street",
        :number => "Number",
        :neighborhood => "Neighborhood",
        :city => "City",
        :state => "State",
        :phone_1 => "Phone 1",
        :phone_2 => "Phone 2",
        :active => false
      ),
      Parent.create!(
        :name => "Name",
        :cpf => "Cpf",
        :age => "Age",
        :sex => 2,
        :street => "Street",
        :number => "Number",
        :neighborhood => "Neighborhood",
        :city => "City",
        :state => "State",
        :phone_1 => "Phone 1",
        :phone_2 => "Phone 2",
        :active => false
      )
    ])
  end

  it "renders a list of parents" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Cpf".to_s, :count => 2
    assert_select "tr>td", :text => "Age".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Street".to_s, :count => 2
    assert_select "tr>td", :text => "Number".to_s, :count => 2
    assert_select "tr>td", :text => "Neighborhood".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Phone 1".to_s, :count => 2
    assert_select "tr>td", :text => "Phone 2".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
