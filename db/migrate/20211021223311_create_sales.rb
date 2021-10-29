class CreateSales < ActiveRecord::Migration[5.2]
  def change
    create_table :sales do |t|
      t.integer :amount
      t.references :coffi, foreign_key: true

      t.timestamps
    end
  end
end
