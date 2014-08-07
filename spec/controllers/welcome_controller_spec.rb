require "spec_helper"

RSpec.describe WelcomeController, :type => :controller do

  welcomes = %w{home portfolio about contact}

  welcomes.each do |welcome|
    describe "GET #{welcome}" do
      it "returns http success" do
        get welcome.to_sym
        expect(response).to be_success
      end

      it "renders the #{welcome} template" do
        get welcome.to_sym
        expect(response).to render_template(welcome)
      end
    end
  end
end
