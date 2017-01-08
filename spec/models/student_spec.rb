require 'rails_helper'

RSpec.describe Student, type: :model do
  subject {
    described_class.new(name: "João Lucas", age: 16, sex: 1, registration: 'B239S', active: true)
  }
  it "Should be a valid" do
    expect(subject).to be_valid
  end
  it "Should be a valid name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end
  it "Should be a valid age" do
    subject.age = nil
    expect(subject).to_not be_valid
  end
  it "Should be a valid sex" do
    subject.sex = nil
    expect(subject).to_not be_valid
  end
  it "Should be a valid registration" do
    subject.registration = nil
    expect(subject).to_not be_valid
  end
  it "Should be a valid active" do
    expect(subject.active).to be_truthy
  end
  it "Registration is unique" do
    student = Student.new(name: "João Pedro", age: 16, sex: 1, registration: 'B239P', active: true)
    expect(student.registration).to_not eq(subject.registration)
  end
end
