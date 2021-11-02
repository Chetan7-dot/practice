class CreateSuppliers < ActiveRecord::Migration[6.1]
  def change
    create_table :suppliers do |t|
      t.string :name

      t.timestamps
    end


    create_table :accounts do |t|
      t.belongs_to :supplier
      t.string :account_number
      t.timestamps
  end
end
