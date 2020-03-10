class CreateStaffs < ActiveRecord::Migration[5.2]
  def change
    create_table :staffs do |t|
      t.string :username
      t.string :password
      t.string :name
      t.string :bithday
      t.string :bithplace
      t.string :phone
      t.references :deparment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
