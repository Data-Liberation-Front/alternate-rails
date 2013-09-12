module AlternateRails
  module ViewHelpers

    def alternate_url(new_params)
      url_for params.merge(new_params)
    end
  
    def alternate_button(format, options)
      icons = {
        json: 'icon-list',
        ics:  'icon-calendar'
      }
      
      icon = options[:icon] || icons[format]
      format_translation = t("formats.#{format}", :default => h(format))
      link_to "<i class='#{icon}'></i> #{format_translation}".html_safe, 
          alternate_url(:format => format), 
          :rel => 'alternate', 
          :type => Mime::EXTENSION_LOOKUP[format.to_s].to_s,
          :class => options[:class] || "btn",
          :title => options[:text] || "Get this in #{format_translation} format"
    end
  
    def alternate_auto_discovery_link_tag(format)
      auto_discovery_link_tag(
        :rel, 
        alternate_url(:format => format), 
        { 
          :title => t("formats.#{format}", :default => h(format)),
          :type => Mime::EXTENSION_LOOKUP[format.to_s].to_s
        }
      )
    end
  
    def alternate_auto_discovery_link_tags
      safe_join((@alternate_formats||[]).map { |f| alternate_auto_discovery_link_tag(f)})
    end
  
    def alternate_link_buttons(options)
      safe_join((@alternate_formats||[]).map { |f| alternate_button(f, options)})
    end

  end
end