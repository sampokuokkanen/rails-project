class ApplicationController < ActionController::Base
  include DeviseWhitelist
  include SetSource
  include CurrentUserConcern
  include DefaultPageContent

  before_action :set_copyright

  def set_copyright
    @copyright = SampoViewTool::Renderer.copyright 'Sampo Kuokkanen', 'All Rights Reserved'
  end
end