require 'rails_helper'

RSpec.describe "agenda_items/edit", type: :view do
  before(:each) do
    @agenda_item = assign(:agenda_item, AgendaItem.create!(
      :title => "MyString"
    ))
  end

  it "renders the edit agenda_item form" do
    render

    assert_select "form[action=?][method=?]", agenda_item_path(@agenda_item), "post" do

      assert_select "input[name=?]", "agenda_item[title]"
    end
  end
end
