class ParcelsController < ApplicationController
    # protect_from_forgery with: :null_session,
    # if: Proc.new { |c| c.request.format =~ %r{application/json}
    # method to get all parcels
    def  index
        parcels = Parcel.all
        render json: parcels, status: :ok
    end

    #method to show a specific parcel
    def show
        parcel = Parcel.find_by(params[:id])
        render json: parcel,status: :ok
    end

    #method to create a parcel order
    def create
        parcel = Parcel.create!(parcel_params)
        render json: parcel, status: :created
    end

    #method to cancel a parcel order
    def destroy
        parcel = Parcel.find(params[:id])
        parcel.destroy
        head :no_content
    end

    #method to change pickup_address of order
    def update
        parcel = Parcel.find(params[:id])
        if parcel
            parcel.update(parcel_params)
            render json: parcel, status: :ok
        else
            render json: {error:'Unable to find your parcel order'}, status: 400
        end
    end
    private
    def parcel_params
        params.permit(:pickup_address,:weight,:address,:description)
    end
    # def create_order
    #         Parcel.find(params[:id])
    # end
end


