class ConstituenciesController < ApplicationController

  def show
    @constituency = Constituency.find(params[:id])
  end

  def lookup_with_postcode
    if params[:postcode]
      if area = PostcodeApi.new.get_area_code_from_postcode(params[:postcode])
        # @constituency = Constituency.find(params[:id])
        # if @area = @constituency.find_by(area[:code])
        #   redirect_to "center of constituency on map"
        # else
          @constituency = Constituency.find(params[:id])
          @postcode = params[:postcode]
          flash[:alert] = "This mobilisation is not happening in your area."
          render :show
        # end
      else
        @constituency = Constituency.find(params[:id])
        @postcode = params[:postcode]
        flash[:alert] = "We couldn't find that postcode - can you double-check and try again?"
        render :show
      end
    end
  end
end
