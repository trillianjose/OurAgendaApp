require 'rails_helper'

RSpec.describe "action_items/index", type: :view do
  before(:each) do
    assign(:action_items, [
      ActionItem.create!(
        :title => "Title"
      ),
      ActionItem.create!(
        :title => "Title"
      )
    ])
  end

  it "renders a list of action_items" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
