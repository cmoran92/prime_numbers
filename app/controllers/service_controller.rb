class ServiceController < ApplicationController
  def index
    if params[:n]
      render json: LastPrime.next(params[:n].to_i)
    else
      render json: LastPrime.next
    end
  end
end
