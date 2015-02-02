class ServiceController < ApplicationController
  protect_from_forgery except: :delete

  def index
    if params[:n]
      render json: LastPrime.next(params[:n].to_i)
    else
      render json: LastPrime.next
    end
  end

  def delete
    LastPrime.first.destroy
    head :ok, content_type: "application/json"
  end
end
