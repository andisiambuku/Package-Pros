class CheckController < ApplicationController
    def index
        render plan: 'Success', status: :ok
    end
end
