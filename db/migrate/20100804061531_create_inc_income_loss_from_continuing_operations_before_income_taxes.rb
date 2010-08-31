class CreateIncIncomeLossFromContinuingOperationsBeforeIncomeTaxes < ActiveRecord::Migration
  def self.up
    create_table :inc_income_loss_from_continuing_operations_before_income_taxes do |t|
      t.integer :company_id
      t.float :value, :limit => 25
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end

  def self.down
    drop_table :inc_income_loss_from_continuing_operations_before_income_taxes
  end
end
