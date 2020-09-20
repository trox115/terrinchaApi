require "rails_helper"

RSpec.describe MenudegustacaosController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/menudegustacaos").to route_to("menudegustacaos#index")
    end

    it "routes to #new" do
      expect(get: "/menudegustacaos/new").to route_to("menudegustacaos#new")
    end

    it "routes to #show" do
      expect(get: "/menudegustacaos/1").to route_to("menudegustacaos#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/menudegustacaos/1/edit").to route_to("menudegustacaos#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/menudegustacaos").to route_to("menudegustacaos#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/menudegustacaos/1").to route_to("menudegustacaos#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/menudegustacaos/1").to route_to("menudegustacaos#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/menudegustacaos/1").to route_to("menudegustacaos#destroy", id: "1")
    end
  end
end
