include ApplicationHelper
class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :safe_params
  helper_method :sorting_param
  protected
    # Use this in place of params when generating links to Excel etc.
    # See https://github.com/rails/rails/issues/26289
    def safe_params
      params.except(:host, :port, :protocol).permit!
    end

    def sorting_param
      safe_params[:sorting].try(:to_sym) || default_sorting
    end

end
