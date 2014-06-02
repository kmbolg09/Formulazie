class AddFormulaReferences < ActiveRecord::Migration
  def change
    add_reference :formulas, :formula_sheet, index: true
  end
end
