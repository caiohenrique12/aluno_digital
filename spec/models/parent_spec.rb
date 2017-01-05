require 'rails_helper'

RSpec.describe Parent, type: :model do
  subject {
    described_class.new(name: "Carlos Arantes", cpf: "444.444.444-44", age: "33", sex: 1, street: "Rua Teste", number: "304 A", neighborhood: "Meireles", city: "Fortaleza", state: "CE", phone_1: "(85) 9333333", phone_2: "(85) 3333333", active: true)
  }
  it "Should be a valid" do
    expect(subject).to be_valid
  end
  it "Should be a valid name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end
  it "Should be a valid cpf" do
    subject.cpf = nil
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
  it "Should be a valid active" do
    expect(subject.active).to be_truthy
  end
  it "CPF is unique" do
    pending "add some examples to (or delete) #{__FILE__}"
  end
end
