require 'rails_helper'

RSpec.describe "action_items/edit", type: :view do
  before(:each) do
    @action_item = assign(:action_item, ActionItem.create!(
      :title => "MyString"
    ))
  end

  it "renders the edit action_item form" do
    render

    assert_select "form[action=?][method=?]", action_item_path(@action_item), "post" do

      assert_select "input[name=?]", "action_item[title]"
    end
  end
end
