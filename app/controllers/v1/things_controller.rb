
class V1::ThingsController < ApplicationController
  def index
    render json: { :things => [
      {
        :greeting => 'Hello React-Rails'
      }
    ] }.to_json
  end
end