class MedicalBox < ActiveRecord::Base
  validates :name, presence: true
  belongs_to :user
  has_many :drugs, -> { where(is_deleted: false)}
end
