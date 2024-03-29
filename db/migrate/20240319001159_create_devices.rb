class CreateDevices < ActiveRecord::Migration[7.1]
  def change
    create_table :devices do |t|
      t.references :store, null: false, foreign_key: true
      t.string :name
      t.string :type

      t.timestamps
    end
  end
end
