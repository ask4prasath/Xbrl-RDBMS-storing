class CreateNetIncomeBeforeExtraItems < ActiveRecord::Migration
  def self.up
    create_table :net_income_before_extra_items do |t|
      t.integer :company_id
      t.float :value, :limit => 25
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end

  def self.down
    drop_table :net_income_before_extra_items
  end
end
