class CreateDeparments < ActiveRecord::Migration[5.2]
  def change
    create_table :deparments do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
