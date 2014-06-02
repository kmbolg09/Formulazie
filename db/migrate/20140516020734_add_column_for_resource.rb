class AddColumnForResource < ActiveRecord::Migration
  def change 
    add_column :formula_sheets, :citation, :text
  end
end
