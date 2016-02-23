class DrugsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :destroy]

  def create
    @drug = Drug.create!(
      name: params[:name],
      amount: params[:amount],
      medical_box_id: params[:medical_box_id]
    )
  end

  def destroy
    temp = Drug.find(params[:id])
      temp.update!(
        is_deleted: true
      )
  end

end
