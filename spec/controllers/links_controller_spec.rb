require "rails_helper"

RSpec.describe LinksController do
  describe "#create" do
    def do_request
      post :create, link: params
    end

    context "failure" do
      let(:params) { Hash(url: nil) }

      it "doesn't create" do
        expect { do_request }.not_to change(Link, :count)
      end

      it "renders new" do
        do_request
        expect(response).to render_template(:new)
      end
    end
  end
end
