require "spec_helper"

RSpec.describe WelcomeController, :type => :controller do

  describe "GET home" do
    it "returns http success" do
      get :home
      expect(response).to be_success
    end

    it "renders the home template" do
      get :home
      expect(response).to render_template("home")
    end
  end

end
