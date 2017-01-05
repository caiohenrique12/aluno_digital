require 'rails_helper'

RSpec.describe "classrooms/new", type: :view do
  before(:each) do
    assign(:classroom, Classroom.new(
      :name => "MyString",
      :turn => 1,
      :unity => nil
    ))
  end

  it "renders new classroom form" do
    render

    assert_select "form[action=?][method=?]", classrooms_path, "post" do

      assert_select "input#classroom_name[name=?]", "classroom[name]"

      assert_select "input#classroom_turn[name=?]", "classroom[turn]"

      assert_select "input#classroom_unity_id[name=?]", "classroom[unity_id]"
    end
  end
end
