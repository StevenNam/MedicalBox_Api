class MedicalBoxesController < ApplicationController
  before_action :authenticate_user!, only: [:index, :show, :create]

  def index
    @medicalBoxes = MedicalBox.where(:user_id => current_user.id)
  end

  def show
    @medicalBox = MedicalBox.find_by_id(params[:id])
  end

  def create
    @medicalBox = MedicalBox.create!( :name => params[:name], :user_id => current_user.id)
  end

end
