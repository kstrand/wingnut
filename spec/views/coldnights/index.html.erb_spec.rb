require 'spec_helper'

describe "coldnights/index" do
  before(:each) do
    assign(:coldnights, [
      stub_model(Coldnight),
      stub_model(Coldnight)
    ])
  end

  it "renders a list of coldnights" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
