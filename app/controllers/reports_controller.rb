class ReportsController < ApplicationController
  def index
  	@check_ins = CheckIn.all
 
  	respond_to do |format|
    	format.html
    	format.json { render :json => @check_ins.to_json }
  	end
  end
end
