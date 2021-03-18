class Api::FacebooksController < ApplicationController
  def callback
    Rails.logger.info("dsdsdewedssd------------------------------")
    Rails.logger.info(params)
    render json: { data: params }
  end
end
