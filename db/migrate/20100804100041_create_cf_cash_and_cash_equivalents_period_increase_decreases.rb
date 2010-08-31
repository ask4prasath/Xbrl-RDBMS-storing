class CreateCfCashAndCashEquivalentsPeriodIncreaseDecreases < ActiveRecord::Migration
  def self.up
    create_table :cf_cash_and_cash_equivalents_period_increase_decreases do |t|
      t.integer :company_id
      t.float :value, :limit => 25
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end

  def self.down
    drop_table :cf_cash_and_cash_equivalents_period_increase_decreases
  end
end
