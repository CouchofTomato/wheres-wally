require 'delegate'

class CharacterDecorator < SimpleDelegator
  def name
    character.name
  end
end