class CreateSyndications < ActiveRecord::Migration[5.2]
  def change
    create_table :syndications do |t|
      t.string :name
      t.string :andress
      t.string :phone
      t.string :ceo_name

      t.timestamps
    end
  end
end
