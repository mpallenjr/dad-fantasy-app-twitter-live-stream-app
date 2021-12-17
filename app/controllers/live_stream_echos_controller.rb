class LiveStreamEchosController < ApplicationController
  def index
    require "json"
    lines = File.open("out.txt").read
    data = JSON.parse([lines].to_s)
    p "data"
    p data

    # render json: data[0].as_json
    render json: data[0]
  end
end
