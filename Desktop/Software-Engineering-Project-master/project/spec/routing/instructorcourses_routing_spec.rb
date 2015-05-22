require "spec_helper"

describe InstructorcoursesController do
  describe "routing" do

    it "routes to #index" do
      get("/instructorcourses").should route_to("instructorcourses#index")
    end

    it "routes to #new" do
      get("/instructorcourses/new").should route_to("instructorcourses#new")
    end

    it "routes to #show" do
      get("/instructorcourses/1").should route_to("instructorcourses#show", :id => "1")
    end

    it "routes to #edit" do
      get("/instructorcourses/1/edit").should route_to("instructorcourses#edit", :id => "1")
    end

    it "routes to #create" do
      post("/instructorcourses").should route_to("instructorcourses#create")
    end

    it "routes to #update" do
      put("/instructorcourses/1").should route_to("instructorcourses#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/instructorcourses/1").should route_to("instructorcourses#destroy", :id => "1")
    end

  end
end
