class LiveStreamEchosController < ApplicationController

  #This controller is used to call the text in the output text file.  It opens the textfile, parses the data, and renders json to be called.
  
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
