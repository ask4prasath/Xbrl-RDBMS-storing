 require 'open-uri'

class SearchController < ApplicationController

  @@problem_entity  = []
  @@entity = {"incomeLossFromContinuingOperationsBeforeIncomeTax" => [],
  "GrossProfit" => [],
  "SalesRevenueNet" => [],
  "LongTermDebtNoncurrent" => [],
  "NetIncomeLoss" => [],
  "NetIncomeBeforeExtraItem" => [],
  "NetIncome" => [],
  "LiabilitiesCurrent" => [],
  "OtherAssetsCurrent" => [],
  "OperatingIncomeLoss" => [],
  "LiabilitiesAndStockholdersEquity" => [],
  "CashAndCashEquivalentsPeriodIncreaseDecrease" => [],
  "StockholdersEquity" => [],
  "Asset" => [], "NetCashProvidedByUsedInOperatingActivity" => [], "NetCashProvidedByUsedInInvestingActivity" => [],
   "NetCashProvidedByUsedInFinancingActivity" => [], "CashAndCashEquivalentsPeriodIncreaseDecrease" => []
  }


  #@@url = "/home/bitstat1/Desktop/0001105055/0001140361-10-032113/dyn-20100630.xml"
  def load
  end

  def submit_load
    urls = []
    (1..606).each do |f|
      Dir.new("/home/bitstat1/Desktop/recent_download/#{f}").entries.each do |files|
        if /(\d).(xml)/.match(files) != nil then
          urls << "/home/bitstat1/Desktop/recent_download/#{f}/#{files}"
        end
      end
    end
    inserting_all_elements(urls)
    writing_errors()
  end



  def income_statement_load(url, comp)

    elements = {
            "SalesRevenueNet" =>  ["SalesRevenueNet", "OtherSalesRevenueNet", "Revenues", "SalesRevenueGoodsNet", "RefiningAndMarketingRevenue",
                                   "UtilityRevenue", "TotalRevenuesAndOtherIncome", "SalesRevenueServicesNet", "RevenueMineralSales",
                                   "HealthCareOrganizationPatientServiceRevenue", "AccountsReceivableNetCurrent"],  #"Total Revenue",
            "GrossProfit" => ["GrossProfit", "InterestIncomeExpenseNet", "GrossProfit", "AccountsPayableCurrent"], # GrossProfit  Profit
            "OperatingIncomeLoss" => ["OperatingIncomeLoss",
                                      "IncomeLossFromContinuingOperationsBeforeIncomeTaxesMinorityInterestAndIncomeLossFromEquityMethodInvestments"], #"Operating Income",
            "incomeLossFromContinuingOperationsBeforeIncomeTax" => ["IncomeLossFromContinuingOperationsBeforeIncomeTaxes",
                                                                    "IncomeLossFromContinuingOperationsBeforeIncomeTaxesMinorityInterestAndIncomeLossFromEquityMethodInvestments",
                                                                    "IncomeFromContinuingOperationsBeforeIncomeTaxes",
                                                                    "IncomeLossBeforeIncomeTaxExpenseBenefit",
                                                                    "IncomeBeforeIncomeTaxes",
                                                                    "IncomeLossBeforeIncomeTax",
                                                                    "IncomeLossBeforeIncomeTaxes", "IncomeLossFromContinuingOperationsBeforeIncomeTaxesDomestic", 
                                                                    "IncomeBeforeTaxes", "IncomeFromContinuingOperationsBeforeProvisionForIncomeTaxes",
                                                                    "ResultsOfOperationsIncomeBeforeIncomeTaxes"], #"Income before Tax",
            "NetIncomeLoss" => ["NetIncomeLoss", "ProfitLoss", "NetIncomeLossAvailableToCommonStockholdersBasic",
                                "IncomeLossFromContinuingOperationsIncludingPortionAttributableToNoncontrollingInterest"], #"Income After Tax",   # This has Dimensions make it note
            "NetIncomeBeforeExtraItem" => ["NetIncomeLoss", "ProfitLoss", "NetIncomeLossAvailableToCommonStockholdersBasic",
                                          "IncomeLossFromContinuingOperationsIncludingPortionAttributableToNoncontrollingInterest"], #"Net income Before Extra Items",  # This has Dimensions make it note
            "NetIncome" => ["NetIncomeLoss", "ProfitLoss", "NetIncomeLossAvailableToCommonStockholdersBasic",
                           "IncomeLossFromContinuingOperationsIncludingPortionAttributableToNoncontrollingInterest"]  #"NetIncome"   # This has Dimensions make it note

    }

     before_insert(elements, "Inc", url, comp)

    #Income Available to Common Excl. Extra Items and Income Available to Common Incl. Extra Items  left coz of same datas check it on the next data load whether these datas present
    #Basic EPS Excluding Extraordinary Items, Basic EPS Including Extraordinary Items, Diluted EPS Including Extraordinary Items, Normalized Income Before Taxes, Normalized Income After Taxes and Normalized Income Avail to Common left as there is no datas

  end


  def balance_sheet_load(url, comp)

    elements = {
            "OtherAssetsCurrent" => ["OtherAssetsCurrent", "AssetsCurrent"], #"Total Current Assets",
            "Asset" =>  "Assets", #"Total Assets",
            "LiabilitiesCurrent" => ["LiabilitiesCurrent"], #"Total Current Liabilities",
            "LongTermDebtNoncurrent" => ["LongTermDebtAndCapitalLeaseObligations", "LongTermDebtNoncurrent", "ConvertibleLongTermNotesPayable",
                                         "SeniorLongTermNotes", "LongTermNotesPayable", "LongTermLineOfCredit", "LongTermLoansFromBank", "LongTermDebt",
                                         "DebtAndCapitalLeaseObligations", "OtherLongTermDebtNoncurrent", "ConvertibleDebtNoncurrent",
                                         "NonRecourseLongTermDebt", "AdvancesFromFederalHomeLoanBanks", "OtherLongTermDebt", "NotesPayable"], #"Total Long Term Debt",
            "StockholdersEquity" => ["StockholdersEquity", "StockholdersEquityIncludingPortionAttributableToNoncontrollingInterest"],#" Total Equity",
            "LiabilitiesAndStockholdersEquity" => ["LiabilitiesAndStockholdersEquity", "StockholdersEquityIncludingPortionAttributableToNoncontrollingInterest"] #"liable equity",
    }

    before_insert(elements, "Bal", url, comp)
    #Total Dept not available in the xbrl
    #Total Liablilities not available in the xbrl
    #Total Common Shares Outstanding not available in the xbrl
  end


  def cash_flow_load(url, comp)
    elements = {
            "NetCashProvidedByUsedInOperatingActivity" => ["NetCashProvidedByUsedInOperatingActivities",
                                                          "NetCashProvidedByUsedInOperatingActivitiesContinuingOperations"], #Cash from Operating Activities load
            "NetCashProvidedByUsedInInvestingActivity" => ["NetCashProvidedByUsedInInvestingActivities",
                                                           "NetCashProvidedByUsedInInvestingActivitiesContinuingOperations"], #Cash from Investing Activities  load
            "NetCashProvidedByUsedInFinancingActivity" => ["NetCashProvidedByUsedInFinancingActivities",
                                                           "NetCashProvidedByUsedInFinancingActivitiesContinuingOperations"], #Cash from Financing Activities
            "CashAndCashEquivalentsPeriodIncreaseDecrease" => "CashAndCashEquivalentsPeriodIncreaseDecrease" #Net Change in Cash
    }

    before_insert(elements, "Cf", url, comp)

  end


  def before_insert(elements, report_method, url, comp)
    ins = Xbrlware.ins(url)     
     elements.each do |table_name, item_name|
      items=[]
      case
        when item_name.kind_of?(String) #Inserts elements to database when the value is string
          items = ins.item(item_name)
        when item_name.kind_of?(Array) #inserts elements to database when the element is a Array
          item_name.each do |name|
            items = ins.item(name)
            break if (not items.empty?)
          end
      end
       #raise "#{table_name} item is not found in #{report_method}" if items.empty?
      File.open("/home/bitstat1/Desktop/urls", 'a') {|f| f.write("Error in #{comp.name}: #{url}   #{table_name} item is not found in #{report_method}\n")} if items.empty?
      @@problem_entity << table_name if items.empty?
      begin
      @@entity[table_name] << "#{comp.name}  url: #{url}" if items.empty?
      rescue Exception
      end
      insert(items, table_name, report_method, comp.id)
    end
  end


  def insert(items, i_name, category, comp_id)
    items.each do |item|
      klass = eval("#{category}#{i_name}")

      row = klass.new(:company_id => comp_id, :value => item.value)
      period  = item.context.period
      start_date, end_date = nil, period.value if period.is_instant?
      start_date, end_date = period.value["start_date"], period.value["end_date"] if period.is_duration?
      row.start_date = start_date
      row.end_date = end_date
      row.save
    end
  end

  def inserting_all_elements(urls)
     urls.each do |url|
       ins = Xbrlware.ins(url)
       comp_name = ins.item("EntityRegistrantName").first.value
       comp = Company.new()
       comp.name = comp_name
       comp.save
       income_statement_load(url, comp)
       balance_sheet_load(url, comp)
       cash_flow_load(url, comp)
    end
  end

  def writing_errors()
    @@problem_entity.uniq.each {|prob| File.open("/home/bitstat1/Desktop/problem_entity", 'a') {|f| f.write(" #{prob}\n")} }
    @@entity.each {|e, v| File.open("/home/bitstat1/Desktop/entity", 'a') {|f| f.write("#{e} :    #{@@entity[e].join(",")}\n")}}
    @@entity.each {|e, v|File.open("/home/bitstat1/Desktop/entity", 'a') {|f| f.write("Total error count in #{e} is #{@@entity[e].count}\n")}}
  end





#  Loading cash flow:
#
#http://localhost:3000/cash_flow_load
#To check the the datas:
#http://localhost:3000/cf_net_cash_provided_by_used_in_financing_activities
#http://localhost:3000/cf_net_cash_provided_by_used_in_investing_activities
#http://localhost:3000/cf_net_cash_provided_by_used_in_operating_activities
#http://localhost:3000/cf_cash_and_cash_equivalents_period_increase_decreases
#
#
#Loading Balance Sheet:
#
#http://localhost:3000/balance_sheet_load
#To check datas:
#http://localhost:3000/bal_assets
#http://localhost:3000/bal_liabilities_and_stockholders_equities
#http://localhost:3000/bal_liabilities_currents
#http://localhost:3000/bal_long_term_debt_noncurrents
#http://localhost:3000/bal_other_assets_currents
#http://localhost:3000/bal_stockholders_equities
#
#Loading Income statements:
#
#http://localhost:3000/income_statement_load
#To check datas:
#http://localhost:3000/inc_gross_profits
#http://localhost:3000/incincome_loss_from_continuing_operations_before_income_taxes
#http://localhost:3000/inc_net_income_before_extra_items
#http://localhost:3000/inc_net_income_losses
#http://localhost:3000/inc_net_incomes
#http://localhost:3000/inc_operating_income_losses
#http://localhost:3000/inc_sales_revenue_nets_controller.rb

end
