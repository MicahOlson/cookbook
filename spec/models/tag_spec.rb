require 'rails_helper'

RSpec.describe Tag, type: :model do
  it { should have_and_belong_to_many :recipes }
  it { should validate_presence_of :tag }
  it { should validate_uniqueness_of :tag }
end
