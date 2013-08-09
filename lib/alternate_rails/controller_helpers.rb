module AlternateRails
  module ControllerHelpers

    def alternate_formats(formats)
      @alternate_formats = formats
      send_headers
    end
    
    def send_headers
      if params[:format].nil?
        params[:format] = request.format.ref
        params[:only_path] = true
        if @alternate_formats.include? params[:format]
          headers['Content-Location'] = url_for params
        end
      end
    end
      
  end
end