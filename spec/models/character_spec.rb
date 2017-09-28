require 'rails_helper'

RSpec.describe Character, type: :model do
  subject(:character) { build(:character) }
  
  it { is_expected.to validate_presence_of(:name) }
end
