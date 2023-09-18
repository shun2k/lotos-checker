require 'rails_helper'

RSpec.describe "Services", type: :request do
  describe "GET /index" do
    it "returns a successful response" do
      get root_path
      expect(response).to have_http_status(200)
    end
  end
end
