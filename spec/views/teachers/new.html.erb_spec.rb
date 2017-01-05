require 'rails_helper'

RSpec.describe "teachers/new", type: :view do
  before(:each) do
    assign(:teacher, Teacher.new(
      :name => "MyString",
      :sex => 1,
      :phone_1 => "MyString",
      :phone_2 => "MyString",
      :registration => "MyString",
      :active => false
    ))
  end

  it "renders new teacher form" do
    render

    assert_select "form[action=?][method=?]", teachers_path, "post" do

      assert_select "input#teacher_name[name=?]", "teacher[name]"

      assert_select "input#teacher_sex[name=?]", "teacher[sex]"

      assert_select "input#teacher_phone_1[name=?]", "teacher[phone_1]"

      assert_select "input#teacher_phone_2[name=?]", "teacher[phone_2]"

      assert_select "input#teacher_registration[name=?]", "teacher[registration]"

      assert_select "input#teacher_active[name=?]", "teacher[active]"
    end
  end
end
