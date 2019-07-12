require 'rails_helper'

RSpec.describe "action_items/new", type: :view do
  before(:each) do
    assign(:action_item, ActionItem.new(
      :title => "MyString"
    ))
  end

  it "renders new action_item form" do
    render

    assert_select "form[action=?][method=?]", action_items_path, "post" do

      assert_select "input[name=?]", "action_item[title]"
    end
  end
end
