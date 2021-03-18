class Api::FacebooksController < ApplicationController
	VERIFY_TOKEN = "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"

  def callback
    Rails.logger.info("dsdsdewedssd------------------------------")
    Rails.logger.info(params)

    mode = params['hub.mode']
    token = params['hub.verify_token']
    challenge = params['hub.challenge']

    if mode && token
    	if mode == 'subscribe' && token == VERIFY_TOKEN
    		render json: challenge, status: :ok and return
    	else
    		render json: {}, status: :forbidden and return
    	end
    end
    render json: {}, status: :forbidden
  end
end
