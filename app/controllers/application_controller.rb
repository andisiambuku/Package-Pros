class ApplicationController < ActionController::API
    #add the encode_token method in the application_controller
    def encode_token(payload)
        JWT.encode(payload, 'my_s3cr3t')
    end
end
