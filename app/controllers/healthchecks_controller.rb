class HealthchecksController < ApplicationController
    # method to check health of api
    def index
        render plain: "All systems good", status: :ok
     end
end
