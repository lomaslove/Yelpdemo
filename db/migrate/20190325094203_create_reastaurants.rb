class CreateReastaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :reastaurants do |t|
      t.string :name
      t.string :adress
      t.string :phone
      t.string :website

      t.timestamps
    end
  end
end
