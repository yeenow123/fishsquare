class ReportsController < ApplicationController
  def index  	
  	@search = CheckIn.search do

  		# search over report types
  		if params[:report_type]
    		fulltext params[:report_type]
    	end

    	# geo search in radius
    	if params[:lat] and params[:lng] and params[:radius]
			 with(:location).in_radius(params[:lat], params[:lng], params[:radius], :bbox => true)
    	end

    	# search date range
    	if params[:date_start] and params[:date_end]

  			with(:report_time).between(Time.now-(3600*24), Time.now)
  			# with(:report_time).greater_than(date)	
    	end

  	end
  	@check_ins = @search.results

  	respond_to do |format|
    	format.html 
    	format.json { render :json => @check_ins.to_json }
  	end
  end

  # def type_search
  #     @search = CheckIn.search do

  #       # search over report types
  #       if params[:report_type]
  #         fulltext params[:report_type]
  #       end
  #     end

  #     @check_ins = @search.results
  #     respond_to do |format|
  #       format.html
  #       format.json { render :json => @check_ins.to_json }
  #     end      
  # end

  # def geo_search
  #     @search = CheckIn.search do
  #       # geo search in radius
  #       if params[:lat] and params[:lng] and params[:radius]
  #        with(:location).in_radius(params[:lat], params[:lng], params[:radius], :bbox => true)
  #       end
  #     end
  #     @check_ins = @search.results
  #     respond_to do |format|
  #       format.html
  #       format.json { render :json => @check_ins.to_json }
  #     end
  # end

  # def date_search
  #     @search = CheckIn.search do
  #     # search date range
  #       if params[:date_start] and params[:date_end]
  #         with(:report_time).less_than(params[:date_end])
  #         with(:report_time).greater_than(params[:date_end])      
  #       end
  #     end
  #     @check_ins = @search.results
  #     respond_to do |format|
  #       format.html
  #       format.json { render :json => @check_ins.to_json }
  #     end
  # end
end
