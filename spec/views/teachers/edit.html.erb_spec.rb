require 'rails_helper'

RSpec.describe "teachers/edit", type: :view do
  before(:each) do
    @teacher = assign(:teacher, Teacher.create!(
      :name => "MyString",
      :sex => 1,
      :phone_1 => "MyString",
      :phone_2 => "MyString",
      :registration => "MyString",
      :active => false
    ))
  end

  it "renders the edit teacher form" do
    render

    assert_select "form[action=?][method=?]", teacher_path(@teacher), "post" do

      assert_select "input#teacher_name[name=?]", "teacher[name]"

      assert_select "input#teacher_sex[name=?]", "teacher[sex]"

      assert_select "input#teacher_phone_1[name=?]", "teacher[phone_1]"

      assert_select "input#teacher_phone_2[name=?]", "teacher[phone_2]"

      assert_select "input#teacher_registration[name=?]", "teacher[registration]"

      assert_select "input#teacher_active[name=?]", "teacher[active]"
    end
  end
end
