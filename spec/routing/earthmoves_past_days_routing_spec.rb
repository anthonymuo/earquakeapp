require "rails_helper"

RSpec.describe EarthmovesPastDaysController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/earthmoves_past_days").to route_to("earthmoves_past_days#index")
    end

    it "routes to #new" do
      expect(:get => "/earthmoves_past_days/new").to route_to("earthmoves_past_days#new")
    end

    it "routes to #show" do
      expect(:get => "/earthmoves_past_days/1").to route_to("earthmoves_past_days#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/earthmoves_past_days/1/edit").to route_to("earthmoves_past_days#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/earthmoves_past_days").to route_to("earthmoves_past_days#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/earthmoves_past_days/1").to route_to("earthmoves_past_days#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/earthmoves_past_days/1").to route_to("earthmoves_past_days#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/earthmoves_past_days/1").to route_to("earthmoves_past_days#destroy", :id => "1")
    end

  end
end
