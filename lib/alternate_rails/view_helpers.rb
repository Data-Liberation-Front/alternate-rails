module AlternateRails::ViewHelpers

  def alternate_url(new_params)
    url_for params.merge(new_params)
  end
  
  def alternate_button(format)
    icons = {
      json: 'icon-list',
      ics:  'icon-calendar'
    }
    format_translation = t("formats.#{format}", :default => h(format))
    link_to "<i class='#{icons[format]}'></i> #{format_translation}".html_safe, 
        alternate_url(:format => format), 
        :rel => 'alternate', 
        :type => Mime::EXTENSION_LOOKUP[format.to_s].to_s,
        :class => "btn",
        :title => "Get this in #{format_translation} format"
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
  
  def alternate_link_buttons
    safe_join((@alternate_formats||[]).map { |f| alternate_button(f)})
  end

end