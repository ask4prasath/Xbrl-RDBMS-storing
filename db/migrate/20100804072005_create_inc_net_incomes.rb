class CreateIncNetIncomes < ActiveRecord::Migration
  def self.up
    create_table :inc_net_incomes do |t|
      t.integer :company_id
      t.float :value, :limit => 25
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end

  def self.down
    drop_table :inc_net_incomes
  end
end
