require 'rails_helper'

RSpec.describe "things/edit", type: :view do
  before(:each) do
    @thing = assign(:thing, Thing.create!(
      :title => "MyString",
      :artist => "MyString"
    ))
  end

  it "renders the edit thing form" do
    render

    assert_select "form[action=?][method=?]", thing_path(@thing), "post" do

      assert_select "input[name=?]", "thing[title]"

      assert_select "input[name=?]", "thing[artist]"
    end
  end
end
