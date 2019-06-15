module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_defaults
  end

  def set_defaults
    @page_title = "Sampo Kuokkanen's website"
    @seo_keywords = "Sampo Kuokkanen Rails React Japan Osaka"
  end
end