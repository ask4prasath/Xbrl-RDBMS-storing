# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100903051350) do

  create_table "bal_assets", :force => true do |t|
    t.integer  "company_id"
    t.float    "value"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bal_liabilities_and_stockholders_equities", :force => true do |t|
    t.integer  "company_id"
    t.float    "value"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bal_liabilities_currents", :force => true do |t|
    t.integer  "company_id"
    t.float    "value"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bal_long_term_debt_noncurrents", :force => true do |t|
    t.integer  "company_id"
    t.float    "value"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bal_other_assets_currents", :force => true do |t|
    t.integer  "company_id"
    t.float    "value"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bal_stockholders_equities", :force => true do |t|
    t.integer  "company_id"
    t.float    "value"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cf_cash_and_cash_equivalents_period_increase_decreases", :force => true do |t|
    t.integer  "company_id"
    t.float    "value"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cf_net_cash_provided_by_used_in_financing_activities", :force => true do |t|
    t.integer  "company_id"
    t.float    "value"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cf_net_cash_provided_by_used_in_investing_activities", :force => true do |t|
    t.integer  "company_id"
    t.float    "value"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cf_net_cash_provided_by_used_in_operating_activities", :force => true do |t|
    t.integer  "company_id"
    t.float    "value"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "companies", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inc_gross_profits", :force => true do |t|
    t.integer  "company_id"
    t.float    "value"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inc_income_loss_from_continuing_operations_before_income_taxes", :force => true do |t|
    t.integer  "company_id"
    t.float    "value"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inc_net_income_before_extra_items", :force => true do |t|
    t.integer  "company_id"
    t.float    "value"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inc_net_income_losses", :force => true do |t|
    t.integer  "company_id"
    t.float    "value"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inc_net_incomes", :force => true do |t|
    t.integer  "company_id"
    t.float    "value"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inc_operating_income_losses", :force => true do |t|
    t.integer  "company_id"
    t.float    "value"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inc_sales_revenue_nets", :force => true do |t|
    t.integer  "company_id"
    t.float    "value"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "incincome_loss_from_continuing_operations_before_income_taxes", :force => true do |t|
    t.integer  "company_id"
    t.float    "value"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "net_income_before_extra_items", :force => true do |t|
    t.integer  "company_id"
    t.float    "value"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sample2s", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sample3s", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "samples", :force => true do |t|
    t.float    "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
