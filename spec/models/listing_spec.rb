require 'spec_helper'

describe Listing do
  subject { Fabricate(:listing) }
  it { should be_valid }

  #associations
  it { should respond_to :user }
  it { should respond_to :colors }
end
