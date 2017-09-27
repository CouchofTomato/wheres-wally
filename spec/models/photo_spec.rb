require 'rails_helper'

RSpec.describe Photo, type: :model do
  subject(:photo) do
    Photo.new(
      url: 'awesome.jpg',
      title: 'You wish you were me'
    )
  end
end
