require 'rails_helper'

RSpec.describe CharacterDecorator do
  subject { CharacterDecorator.new(photos_character) }
  let(:photos_character) { double 'PhotosCharacter', character: character}
  let(:character) { double 'Character', name: 'Austin' }
  
  describe '#name' do
    it 'returns the characters name' do
      expect(subject.name).to eql 'Austin'
    end
  end
end