require "rails_helper"

RSpec.describe DegustacaosController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/degustacaos").to route_to("degustacaos#index")
    end

    it "routes to #new" do
      expect(get: "/degustacaos/new").to route_to("degustacaos#new")
    end

    it "routes to #show" do
      expect(get: "/degustacaos/1").to route_to("degustacaos#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/degustacaos/1/edit").to route_to("degustacaos#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/degustacaos").to route_to("degustacaos#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/degustacaos/1").to route_to("degustacaos#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/degustacaos/1").to route_to("degustacaos#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/degustacaos/1").to route_to("degustacaos#destroy", id: "1")
    end
  end
end
