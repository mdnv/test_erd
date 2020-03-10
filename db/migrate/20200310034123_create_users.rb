class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      # candidate infomation
      # basic information
      t.string :name
      t.string :name_katakana
      t.string :name_kanji
      t.string :gender
      t.datetime :bithday
      t.string :phone
      t.string :bithplace
      t.string :andress
      t.string :phone_ja
      t.string :address_ja
      # current order infomation
      t.references :order, null: false, foreign_key: true
      t.references :company, null: false, foreign_key: true
      t.datetime :matriculation_date
      t.datetime :exit_date
      t.datetime :entry_date
      # training result
      t.string :admission_day
      t.string :training_result

      t.timestamps
    end
  end
end
