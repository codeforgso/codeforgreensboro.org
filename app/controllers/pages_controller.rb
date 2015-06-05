class PagesController < ApplicationController
  include HighVoltage::StaticPage

  layout :layout_for_page

  private

  def layout_for_page
    case params[:id]
    when 'home'
      'application'
    else
      'internal'
    end
  end

end
