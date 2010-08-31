RangeSearch::Application.routes.draw do |map|
  get "loads" => "load#index"

  post "load/submit"

  resources :companies

  resources :cf_cash_and_cash_equivalents_period_increase_decreases

  resources :cf_net_cash_provided_by_used_in_financing_activities

  resources :cf_net_cash_provided_by_used_in_investing_activities

  resources :cf_net_cash_provided_by_used_in_operating_activities

  resources :bal_liabilities_and_stockholders_equities

  resources :bal_stockholders_equities

  resources :bal_long_term_debt_noncurrents

  resources :bal_liabilities_currents

  resources :bal_assets

  resources :bal_other_assets_currents

  resources :inc_net_incomes

  resources :inc_net_income_before_extra_items

  resources :net_income_before_extra_items

  resources :incincome_loss_from_continuing_operations_before_income_taxes

  resources :add_comp_to_inc_sales_revenue_nets

  resources :add_comp_to_inc_gross_profits

  resources :inc_net_income_losses

  resources :inc_income_loss_from_continuing_operations_before_income_taxes

  resources :inc_operating_income_losses

  resources :inc_sales_revenue_nets

  resources :inc_gross_profits

  get "search" => "search#index"

  get "load" => "search#load"

  get "income_statement_load" => "search#income_statement_load"

  get "balance_sheet_load" => "search#balance_sheet_load"

  get "cash_flow_load" => "search#cash_flow_load"

  post "search/submit_load"

  resources :niacs

  resources :niats

  resources :nibts

  resources :deieis

  resources :beieis

  resources :beeeis

  resources :iacieis

  resources :iaceeis

  resources :net_incomes

  resources :nibeis

  resources :income_after_taxes

  resources :income_before_taxes

  resources :operating_expenses

  resources :operating_incomes

  resources :toes

  resources :gross_profits

  resources :revenues

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get :short
  #       post :toggle
  #     end
  #
  #     collection do
  #       get :sold
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get :recent, :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
