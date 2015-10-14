require 'rails_helper'

describe Contribution do
  it { should validate_presence_of :user }
  it { should validate_presence_of :sentence }
  it { should validate_presence_of :image_urls }

  it {should belong_to :story}

end
