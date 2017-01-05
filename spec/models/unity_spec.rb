require 'rails_helper'

RSpec.describe Unity, type: :model do
  subject {
    @school = School.create(name: 'Farias Brito', cnpj: '123131', active: true)
    described_class.create!(name: "Unidade Centro", street: "Rua Teste", number: "299", neighborhood: "Centro", city: "Fortaleza", state: "CE", phone_1: "12831983", phone_2: "2319833", school_id: @school.id, active: true)
  }
  it "Should be a valid" do
    expect(subject).to be_valid
  end
  it "Should be a valid name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end
  it "Should be a valid street" do
    subject.street = nil
    expect(subject).to_not be_valid
  end
  it "Should be a valid number" do
    subject.number = nil
    expect(subject).to_not be_valid
  end
  it "Should be a valid neighborhood" do
    subject.neighborhood = nil
    expect(subject).to_not be_valid
  end
  it "Should be a valid city" do
    subject.city = nil
    expect(subject).to_not be_valid
  end
  it "Should be a valid state" do
    subject.state = nil
    expect(subject).to_not be_valid
  end
  it "Should be a valid phone_1" do
    subject.phone_1 = nil
    expect(subject).to_not be_valid
  end
  it "Should be a valid phone_2" do
    subject.phone_2 = nil
    expect(subject).to_not be_valid
  end
  it "Should be a valid school_id" do
    subject.school_id = nil
    expect(subject).to_not be_valid
  end
  it "Should be a valid active" do
    expect(subject.active).to be_truthy
  end
end
