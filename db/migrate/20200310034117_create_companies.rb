class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.references :syndication, null: false, foreign_key: true
      t.string :name
      t.string :andress
      t.string :phone
      t.string :ceo_name

      t.timestamps
    end
  end
end
