require 'spec_helper'

describe User do
  subject { Fabricate(:user) }
  it { should be_valid }

  #associations
  it { should respond_to :listings }
end
