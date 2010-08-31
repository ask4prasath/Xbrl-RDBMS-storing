class CreateCfNetCashProvidedByUsedInInvestingActivities < ActiveRecord::Migration
  def self.up
    create_table :cf_net_cash_provided_by_used_in_investing_activities do |t|
      t.integer :company_id
      t.float :value, :limit => 25
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end

  def self.down
    drop_table :cf_net_cash_provided_by_used_in_investing_activities
  end
end
