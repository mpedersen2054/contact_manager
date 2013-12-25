require 'spec_helper'

describe Person do
  it 'should be valid' do
    person = Person.new(first_name: "Matt", last_name: "Pedersen")
    expect(person).to be_valid
  end
  it 'is invalid without a first name' do
    person = Person.new(first_name: nil)
    expect(person).to_not be_valid
  end
  it 'is invalid without a last name' do
    person = Person.new(first_name: "Freg", last_name: nil)
    expect(person).to_not be_valid
  end
end
