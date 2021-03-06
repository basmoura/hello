require "spec_helper"

module Hello
  describe SessionsController do
    describe "routing" do
      routes { Hello::Engine.routes }

      it "routes to #index" do
        expect(:get => "/sessions").to route_to("hello/sessions#index")
      end

          it "routes to #show" do
            expect(:get => "/sessions/1").to route_to("hello/sessions#show", :id => "1")
          end

    end
  end
end
