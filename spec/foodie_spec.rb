require 'spec_helper'

describe Foodie do
  it 'should have a version number' do
    Foodie::VERSION.should_not be_nil
  end

  it 'milk is delicious' do
    Foodie::Food.portray("milk").should eql("delicious")
  end

  it 'egg is gross' do
    Foodie::Food.portray("egg").should eql("gross")
  end

  it 'egg pluralize eggs' do
    Foodie::Food.pluralize("egg").should eql("eggs")
  end
end
