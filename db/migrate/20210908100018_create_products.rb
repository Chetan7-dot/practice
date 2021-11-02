class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      has_many :pictures, as: :imageable

      t.timestamps
    end
  end
end
