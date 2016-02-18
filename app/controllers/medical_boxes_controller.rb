class MedicalBoxesController < ApplicationController
  #before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:user_id] == nil then
      @medicalBoxes = MedicalBox.all
    else
      @medicalBoxes = MedicalBox.find_by_sql('select * from medical_boxes where user_id = ' + params[:user_id])
      #@medicalBoxes = MedicalBox.joins(:user).all
    end
  end

  def show
    @medicalBoxes = MedicalBox.find_by_id(params[:id])
  end
end
