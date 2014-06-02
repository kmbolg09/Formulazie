class CreateFormulaSheets < ActiveRecord::Migration
  def change
    create_table :formula_sheets do |t|
      t.string :title

      t.timestamps
    end
  end
end
