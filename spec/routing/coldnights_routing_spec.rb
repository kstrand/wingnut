require "spec_helper"

describe ColdnightsController do
  describe "routing" do

    it "routes to #index" do
      get("/coldnights").should route_to("coldnights#index")
    end

    it "routes to #new" do
      get("/coldnights/new").should route_to("coldnights#new")
    end

    it "routes to #show" do
      get("/coldnights/1").should route_to("coldnights#show", :id => "1")
    end

    it "routes to #edit" do
      get("/coldnights/1/edit").should route_to("coldnights#edit", :id => "1")
    end

    it "routes to #create" do
      post("/coldnights").should route_to("coldnights#create")
    end

    it "routes to #update" do
      put("/coldnights/1").should route_to("coldnights#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/coldnights/1").should route_to("coldnights#destroy", :id => "1")
    end

  end
end
