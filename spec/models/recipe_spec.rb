require 'rails_helper'

RSpec.describe Recipe, type: :model do
  it { should have_and_belong_to_many :tags }
end
