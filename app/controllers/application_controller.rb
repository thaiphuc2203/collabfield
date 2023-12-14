class ApplicationController < ActionController::Base
  rescue_from ActionController::RoutingError, with: :render_404

  def render_404
    render file: "#{Rails.root}/public/404", layout: false, status: :not_found
  end
end
