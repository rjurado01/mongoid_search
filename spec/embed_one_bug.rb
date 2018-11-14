require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Mongoid::Search do
  class Parent
    include Mongoid::Document
    include Mongoid::Search

    embeds_one :child

    search_in 'child.name'
  end

  class Child
    include Mongoid::Document

    field :name

    embedded_in :parent
  end

  it 'should return the product' do
    parent = Parent.create(child: Child.new(name: 'name'))
    expect(parent._keywords).to eq(['name'])
  end
end
