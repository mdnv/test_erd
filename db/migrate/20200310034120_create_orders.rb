class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
            # order information
      t.references :company, null: false, foreign_key: true
      t.references :syndication, null: false, foreign_key: true
      t.string :andress
      t.string :website
      # job information
      t.references :profession, null: false, foreign_key: true
      # t.datetime :interview_date
      t.float :training_allowance
      t.integer :work_time
      t.integer :over_time
      t.integer :break_time
      t.integer :work_day
      t.integer :basic_salary
      t.integer :actual_salary
      t.integer :hourly_wage
      t.integer :current_company
      # recruitment plan
      t.datetime :form_complete
      t.integer :test_schedule
      t.integer :test_way
      t.integer :test_content
      t.integer :test_place
      t.integer :number_test
      # recruitment condition
      t.integer :gender
      t.integer :age_range
      t.integer :hight
      t.integer :weight
      t.integer :handedness
      t.integer :marital_status
      t.integer :blood_type
      t.integer :educational_level
      # other require
      t.integer :smoke
      t.integer :drink
      t.integer :vision
      t.integer :tatto
      t.integer :workmanship
      # exit of a country expected
      t.datetime :exit_date
      t.datetime :contract_duration
      # job content (images)

      t.timestamps
    end
  end
end
