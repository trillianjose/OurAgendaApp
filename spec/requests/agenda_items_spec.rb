require 'rails_helper'

RSpec.describe "AgendaItems", type: :request do
  describe "GET /agenda_items" do
    it "works! (now write some real specs)" do
      get agenda_items_path
      expect(response).to have_http_status(200)
    end
  end
end
