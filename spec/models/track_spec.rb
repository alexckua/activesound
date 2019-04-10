require 'rails_helper'

RSpec.describe Track, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:artist) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:title) }
  end
end
