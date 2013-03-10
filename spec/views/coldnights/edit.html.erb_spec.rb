require 'spec_helper'

describe "coldnights/edit" do
  before(:each) do
    @coldnight = assign(:coldnight, stub_model(Coldnight))
  end

  it "renders the edit coldnight form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", coldnight_path(@coldnight), "post" do
    end
  end
end
