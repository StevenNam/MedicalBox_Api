class MedicalBoxesController < ApplicationController
  before_action :authenticate_user!, only: [:index, :show, :create]

  def index
    @medicalBoxes = MedicalBox.where(:user_id => current_user.id).order("id ASC")
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

  def update
    temp = MedicalBox.find(params[:id])
    temp.update!(
      name: params[:name] ||= temp.name,
      alert_time: params[:alert_time] ||= temp.alert_time,
      frequency: params[:frequency] ||= temp.frequency
    )

    @medicalBox = MedicalBox.find(params[:id])
  end

  def post_params
    params.permit(:name)
  end

end
