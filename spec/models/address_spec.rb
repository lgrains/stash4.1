require 'spec_helper'

describe Address do
  subject { Fabricate(:address) }
  it {should be_valid}

  #associations
  it { should respond_to :user }

  #validations
  it { should validate_presence_of :line_1 }
  it { should validate_presence_of :city }
  it { should validate_presence_of :state }
  it { should validate_presence_of :zip_code }


end
