require 'spec_helper'

describe "coldnights/new" do
  before(:each) do
    assign(:coldnight, stub_model(Coldnight).as_new_record)
  end

  it "renders new coldnight form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", coldnights_path, "post" do
    end
  end
end
