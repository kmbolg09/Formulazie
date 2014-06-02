class Formula < ActiveRecord::Base
  belongs_to :formula_sheet
  validates_presence_of :name
end
