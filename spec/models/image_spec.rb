require 'rails_helper'

describe Image do
  it { should validate_presence_of :src }
  it { should validate_presence_of :animation }
  it { should validate_presence_of :size}

  it {should have_and_belong_to_many :contributions}
end
