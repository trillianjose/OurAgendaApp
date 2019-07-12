require 'rails_helper'

RSpec.describe "agenda_items/show", type: :view do
  before(:each) do
    @agenda_item = assign(:agenda_item, AgendaItem.create!(
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
  end
end
