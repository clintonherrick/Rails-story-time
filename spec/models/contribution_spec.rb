require 'rails_helper'

describe Contribution do
  it { should validate_presence_of :user }
  it { should validate_presence_of :sentence }

  it {should belong_to :story}
  it {should have_and_belong_to_many :images}

end
