require 'rails_helper'

RSpec.describe Photo, type: :model do
  subject(:photo) { build(:photo) }

  it { is_expected.to validate_presence_of(:url) }
  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to have_many(:scores) }
  it { is_expected.to have_many(:photos_characters) }
  it { is_expected.to have_many(:characters) }
end
