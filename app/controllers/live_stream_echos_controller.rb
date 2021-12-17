class LiveStreamEchosController < ApplicationController
  def index
    require "json"
    # OPEN THE FILE THAT HOLDS THE CHUNK
    lines = File.open("out.txt").read
    # PARSE THE CHUNK 
    data = JSON.parse([lines].to_s)
    # RENDER THE CHUNK AS JSON TO BE CALLED 
    render json: data[0]
  end
end
