class ParcelsController < ApplicationController
    # method to get all parcels
    def  index 
        parcels = Parcel.all 
        render json: parcels, status: :ok
    end

    #method to show a specific parcel
    def show 
        parcel = Parcel.find(params[:id])
        render json: pizza,status: :ok
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

    #method to change destination of order
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
        params.permit(:description,:weight,:address,:destination,:price)
    end
end
