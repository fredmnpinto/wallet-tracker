class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.string :name
      t.decimal :amount
      t.date :paid_at
      t.text :description

      t.timestamps
    end
  end
end
