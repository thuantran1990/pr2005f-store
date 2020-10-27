class SearchsController < ApplicationController
	  before_action :check_keyword, only: %i(index)

  def index
    @products = @q.result(distinct: true)

  end

  private

  def check_keyword
    @keyword = params[:q].values.first if params[:q]
    return unless @keyword.blank?

    flash[:danger] =  "empty"
    redirect_to root_path
  end
end
