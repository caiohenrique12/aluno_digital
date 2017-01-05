require 'rails_helper'

RSpec.describe "parents/new", type: :view do
  before(:each) do
    assign(:parent, Parent.new(
      :name => "MyString",
      :cpf => "MyString",
      :age => "MyString",
      :sex => 1,
      :street => "MyString",
      :number => "MyString",
      :neighborhood => "MyString",
      :city => "MyString",
      :state => "MyString",
      :phone_1 => "MyString",
      :phone_2 => "MyString",
      :active => false
    ))
  end

  it "renders new parent form" do
    render

    assert_select "form[action=?][method=?]", parents_path, "post" do

      assert_select "input#parent_name[name=?]", "parent[name]"

      assert_select "input#parent_cpf[name=?]", "parent[cpf]"

      assert_select "input#parent_age[name=?]", "parent[age]"

      assert_select "input#parent_sex[name=?]", "parent[sex]"

      assert_select "input#parent_street[name=?]", "parent[street]"

      assert_select "input#parent_number[name=?]", "parent[number]"

      assert_select "input#parent_neighborhood[name=?]", "parent[neighborhood]"

      assert_select "input#parent_city[name=?]", "parent[city]"

      assert_select "input#parent_state[name=?]", "parent[state]"

      assert_select "input#parent_phone_1[name=?]", "parent[phone_1]"

      assert_select "input#parent_phone_2[name=?]", "parent[phone_2]"

      assert_select "input#parent_active[name=?]", "parent[active]"
    end
  end
end
