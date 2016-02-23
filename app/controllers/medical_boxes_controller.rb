class MedicalBoxesController < ApplicationController
  before_action :authenticate_user!, only: [:index, :show, :create, :copy, :update, :destroy]

  def index
    @medicalBoxes = MedicalBox.where(user_id: current_user.id, is_deleted: false).order("id ASC")
  end

  def show
    @medicalBox = MedicalBox.find(params[:id])
  end

  def create
    @medicalBox = MedicalBox.create!(
      name: params[:name] ||= 'New Medical Box',
      alert_time: params[:alert_time],
      frequency: params[:frequency] ||= 'once',
      user_id: current_user.id
    )
  end

  def copy
    originBox = MedicalBox.find(params[:medical_box_id])

    @medicalBox = MedicalBox.create!(
      name: originBox.name,
      alert_time: originBox.alert_time,
      frequency: originBox.frequency,
      user_id: current_user.id
    )
  end

  def update
    temp = MedicalBox.find(params[:id])
    temp.update!(
      name: params[:name] ||= temp.name,
      alert_time: params[:alert_time] ||= temp.alert_time,
      frequency: params[:frequency] ||= temp.frequency
    )

    @medicalBox = MedicalBox.find(params[:id])
  end

  def destroy
    temp = MedicalBox.find(params[:id])
    temp.update!(
      is_deleted: true
    )
  end

  def post_params
    params.permit(:name)
  end

end
