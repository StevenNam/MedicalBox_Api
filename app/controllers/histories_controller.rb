class HistoriesController < ApplicationController
  before_action :authenticate_user!, only: [:create, :update]

  def create
    @history = History.create!(
      is_eaten: false,
      medical_box_id: params[:medical_box_id]
    )
  end

  def update
    temp = History.find(params[:id])
      temp.update!(
        is_eaten: true
      )
    end
end
