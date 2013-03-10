require 'spec_helper'

describe "coldnights/show" do
  before(:each) do
    @coldnight = assign(:coldnight, stub_model(Coldnight))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
