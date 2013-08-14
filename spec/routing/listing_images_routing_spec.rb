require "spec_helper"

describe ListingImagesController do
  describe "routing" do

    it "routes to #index" do
      get("/listing_images").should route_to("listing_images#index")
    end

    it "routes to #new" do
      get("/listing_images/new").should route_to("listing_images#new")
    end

    it "routes to #show" do
      get("/listing_images/1").should route_to("listing_images#show", :id => "1")
    end

    it "routes to #edit" do
      get("/listing_images/1/edit").should route_to("listing_images#edit", :id => "1")
    end

    it "routes to #create" do
      post("/listing_images").should route_to("listing_images#create")
    end

    it "routes to #update" do
      put("/listing_images/1").should route_to("listing_images#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/listing_images/1").should route_to("listing_images#destroy", :id => "1")
    end

  end
end
