include ApplicationHelper
class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :safe_params
  helper_method :sorting_param
  protected
    def safe_params
      params.except(:host, :port, :protocol).permit!
    end

    def sorting_param
      safe_params[:sorting].try(:to_sym) || :ascend_by_updated_at
    end

end
