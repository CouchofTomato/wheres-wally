require 'rails_helper'

RSpec.describe PhotosCharacter, type: :model do
  subject(:photo_character) { build(:photos_character) }
  
  it { is_expected.to validate_presence_of(:top_x) }
  it { is_expected.to validate_presence_of(:top_y) }
  it { is_expected.to validate_presence_of(:bottom_x) }
  it { is_expected.to validate_presence_of(:bottom_y) }
  it { is_expected.to validate_presence_of(:photo) }
  it { is_expected.to validate_presence_of(:character) }
end
