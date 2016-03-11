class HistoriesController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def create
    @history = History.create!(
      is_eaten: true,
      medical_box_id: params[:medical_box_id]
    )
  end
end
