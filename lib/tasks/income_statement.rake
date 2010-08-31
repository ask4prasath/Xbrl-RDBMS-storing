require 'rubygems'
require 'xbrlware'


def index
    ins = Xbrlware.ins("/home/bitstat1/Desktop/csco-20100501.xml")

    #Inserting Revenue
    items = ins.item("SalesRevenueNet")
    items.each do |a|
      puts a.context.period.is_instant?
      revenue = Revenue.new(:company_id => 1, :value => a.value)
      revenue.start_date = a.context.period.value["start_date"]
      revenue.end_date = a.context.period.value["end_date"]
      revenue.save
    end

    # Inserting GrossProfit  Profit
    gp = ins.item("GrossProfit")
     gp.each do |a|
      puts a.context.period.is_instant?
      revenue = GrossProfit.new(:company_id => 1, :value => a.value)
      revenue.start_date = a.context.period.value["start_date"]
      revenue.end_date = a.context.period.value["end_date"]
      revenue.save
     end

    # Total operating expense data not available on xbrl
    #toe = ins.item("GrossProfit")
     #toe.each do |a|
     # puts a.context.period.is_instant?
     # revenue = GrossProfit.new(:company_id => 1, :value => a.value)
      #revenue.start_date = a.context.period.value["start_date"]
      #revenue.end_date = a.context.period.value["end_date"]
     # revenue.save
    # end

     #inserting Operating Income
      oil = ins.item("OperatingIncomeLoss")
     oil.each do |a|
      puts a.context.period.is_instant?
      revenue = OperatingIncome.new(:company_id => 1, :value => a.value)
      revenue.start_date = a.context.period.value["start_date"]
      revenue.end_date = a.context.period.value["end_date"]
      revenue.save
     end


      #Income before Tax
      ilc = ins.item("IncomeLossFromContinuingOperationsBeforeIncomeTaxes")
     ilc.each do |a|
      puts a.context.period.is_instant?
      revenue = IncomeBeforeTax.new(:company_id => 1, :value => a.value)
      revenue.start_date = a.context.period.value["start_date"]
      revenue.end_date = a.context.period.value["end_date"]
      revenue.save
     end

     # This has Dimensions make it note
     # Income After Tax
     iac = ins.item("NetIncomeLoss")
     iac.each do |a|
      puts a.context.period.is_instant?
      revenue = IncomeAfterTax.new(:company_id => 1, :value => a.value)
      revenue.start_date = a.context.period.value["start_date"]
      revenue.end_date = a.context.period.value["end_date"]
      revenue.save
     end

      #Net income Before Extra Items
      # This has Dimensions make it note
     nibei = ins.item("NetIncomeLoss")
     nibei.each do |a|
      puts a.context.period.is_instant?
      revenue = Nibei.new(:company_id => 1, :value => a.value)
      revenue.start_date = a.context.period.value["start_date"]
      revenue.end_date = a.context.period.value["end_date"]
      revenue.save
     end

     #Net Income
    # This has Dimensions make it note
     ni = ins.item("NetIncomeLoss")
     ni.each do |a|
      puts a.context.period.is_instant?
      revenue = NetIncome.new(:company_id => 1, :value => a.value)
      revenue.start_date = a.context.period.value["start_date"]
      revenue.end_date = a.context.period.value["end_date"]
      revenue.save
     end

      #Income Available to Common Excl. Extra Items and Income Available to Common Incl. Extra Items  left coz of same datas check it on the next data load whether these datas present
      #Basic EPS Excluding Extraordinary Items, Basic EPS Including Extraordinary Items, Diluted EPS Including Extraordinary Items, Normalized Income Before Taxes, Normalized Income After Taxes and Normalized Income Avail to Common left as there is no datas


namespace :income do
  task :load => :environment do
    puts "hello world"
  end
end


end


