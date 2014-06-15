class ReportsController < ApplicationController
  def index  	

  	@search = CheckIn.search do

      # search over report types
      if params.key?(:report_type)
        if params[:report_type]
          fulltext params[:report_type]
        end
      end

      if params.key?(:lat) and params.key?(:lng) and params.key?(:radius)
        # geo search in radius
        if params[:lat] != '' and params[:lng] != '' and params[:radius] != ''
         with(:location).in_radius(params[:lat], params[:lng], params[:radius], :bbox => true)
        end
      end

      # search date range   
      if params.key?(:date_start)  
        if params[:date_start]["(1i)"] && params[:date_start]["(2i)"] && params[:date_start]["(3i)"]
          date_start = Date.new params[:date_start]["(1i)"].to_i, params[:date_start]["(2i)"].to_i, params[:date_start]["(3i)"].to_i
        end
      end

      if params.key?(:date_end)
        if params[:date_end]["(1i)"] && params[:date_end]["(2i)"] && params[:date_end]["(3i)"]
          date_end = Date.new params[:date_end]["(1i)"].to_i, params[:date_end]["(2i)"].to_i, params[:date_end]["(3i)"].to_i
        end
      end

      if date_start and date_end
        with(:report_time).greater_than(date_start)
        with(:report_time).less_than(date_end) 
      end

  	end
  	@check_ins = @search.results

  	respond_to do |format|
    	format.html 
    	format.json { render :json => @check_ins.to_json }
  	end
  end


end
