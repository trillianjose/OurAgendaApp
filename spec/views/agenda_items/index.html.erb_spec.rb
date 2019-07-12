require 'rails_helper'

RSpec.describe "agenda_items/index", type: :view do
  before(:each) do
    assign(:agenda_items, [
      AgendaItem.create!(
        :title => "Title"
      ),
      AgendaItem.create!(
        :title => "Title"
      )
    ])
  end

  it "renders a list of agenda_items" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
