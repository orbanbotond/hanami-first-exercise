require_relative '../../spec_helper'

describe Mailers::Welcome do
  it 'delivers email' do
    mail = Mailers::Welcome.deliver
  end
end
