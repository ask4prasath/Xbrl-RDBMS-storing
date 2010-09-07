RangeSearch::Application.routes.draw do |map|
  resources :sample3s

  get "loads" => "load#index"

  post "load/submit"

  get "search" => "search#index"

  get "load" => "search#load"

  get "income_statement_load" => "search#income_statement_load"

  get "balance_sheet_load" => "search#balance_sheet_load"

  get "cash_flow_load" => "search#cash_flow_load"

  post "search/submit_load"

   root :to => "load#index"

  post "samples32" => "sample3s#create"


end
