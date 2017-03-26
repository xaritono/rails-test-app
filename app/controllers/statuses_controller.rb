class StatusesController < ApplicationController
  def index

  end

  def show
    render json: { running: ExternalService.new(params[:id]).is_running? }
  end
end
