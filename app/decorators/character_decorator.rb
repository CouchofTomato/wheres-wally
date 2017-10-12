require 'delegate'

class CharacterDecorator < SimpleDelegator
  def name
    Character.find(character_id).name
  end
end