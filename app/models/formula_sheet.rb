class FormulaSheet < ActiveRecord::Base

validates_presence_of :title

has_many :formulas

belongs_to :user 

end
