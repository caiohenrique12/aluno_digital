require 'rails_helper'

RSpec.describe "unities/edit", type: :view do
  before(:each) do
    @unity = assign(:unity, Unity.create!(
      :name => "MyString",
      :street => "MyString",
      :number => "MyString",
      :neighborhood => "MyString",
      :city => "MyString",
      :state => "MyString",
      :phone_1 => "MyString",
      :phone_2 => "MyString",
      :school => nil,
      :active => false
    ))
  end

  it "renders the edit unity form" do
    render

    assert_select "form[action=?][method=?]", unity_path(@unity), "post" do

      assert_select "input#unity_name[name=?]", "unity[name]"

      assert_select "input#unity_street[name=?]", "unity[street]"

      assert_select "input#unity_number[name=?]", "unity[number]"

      assert_select "input#unity_neighborhood[name=?]", "unity[neighborhood]"

      assert_select "input#unity_city[name=?]", "unity[city]"

      assert_select "input#unity_state[name=?]", "unity[state]"

      assert_select "input#unity_phone_1[name=?]", "unity[phone_1]"

      assert_select "input#unity_phone_2[name=?]", "unity[phone_2]"

      assert_select "input#unity_school_id[name=?]", "unity[school_id]"

      assert_select "input#unity_active[name=?]", "unity[active]"
    end
  end
end
