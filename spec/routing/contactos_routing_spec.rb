require "rails_helper"

RSpec.describe ContactosController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/contactos").to route_to("contactos#index")
    end

    it "routes to #new" do
      expect(get: "/contactos/new").to route_to("contactos#new")
    end

    it "routes to #show" do
      expect(get: "/contactos/1").to route_to("contactos#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/contactos/1/edit").to route_to("contactos#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/contactos").to route_to("contactos#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/contactos/1").to route_to("contactos#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/contactos/1").to route_to("contactos#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/contactos/1").to route_to("contactos#destroy", id: "1")
    end
  end
end
