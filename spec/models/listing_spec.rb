require 'spec_helper'

describe Listing do
  subject { Fabricate(:listing) }
  it { should be_valid }

  #associations
  it { should respond_to :user }
  it { should belong_to :user }

  #validations
  it { should validate_presence_of :length }
  it { should validate_presence_of :width }

end
