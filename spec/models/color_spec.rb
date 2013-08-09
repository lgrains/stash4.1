require 'spec_helper'

describe Color do
  subject { Fabricate(:color) }
  it { should be_valid }

  #associations
  it { should respond_to :listings }
end
