class CreateFormulas < ActiveRecord::Migration
  def change
    create_table :formulas do |t|
      t.string :name
      t.text :formula
      t.text :description
      t.text :example

      t.timestamps
    end
  end
end
