ActionController::Routing::Routes.draw do |map|
  map.resources :ad_zone_categories

  map.resources :site_categories

  map.resources :target_defs

  map.resources :ad_zone_statuses

  map.resources :ad_zone_types

  map.resources :order_statuses

  map.resources :display_zones

  map.resources :targets

  map.resources :sites

  map.resources :ad_boards_campaigns

  map.resources :ad_boards

  map.resources :ad_zones

  map.resources :charge_cpts

  map.resources :charge_cpms

  map.resources :campaigns

  map.resources :orders

  map.resources :advertiser_infos

  map.resources :publisher_infos

  map.resources :networks

  map.resources :members

  map.resources :members

  map.resources :members

  map.resources :members

  map.resources :ad_zone_categories, :active_scaffold => true

  map.resources :site_categories, :active_scaffold => true


  map.resources :site_categories, :active_scaffold => true

  map.resources :ad_zone_categories, :active_scaffold => true

  map.resources :display_zones, :active_scaffold => true

  map.resources :targets, :active_scaffold => true

  map.resources :sites, :active_scaffold => true

  map.resources :advertisers, :active_scaffold => true

  map.resources :networks, :active_scaffold => true

  map.resources :publishers, :active_scaffold => true

  map.resources :orders, :active_scaffold => true

  map.resources :ad_boards, :active_scaffold => true

  map.resources :ad_zones, :active_scaffold => true

  map.resources :advertisements, :active_scaffold => true

  map.resources :charge_cpts, :active_scaffold => true

  map.resources :charge_cpms, :active_scaffold => true

  map.resources :users, :active_scaffold => true

  map.resources :campaigns, :active_scaffold => true


  # The priority is based upon order of creation: first created -> highest priority.

  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller
  
  # Sample resource route with more complex sub-resources
  #   map.resources :products do |products|
  #     products.resources :comments
  #     products.resources :sales, :collection => { :recent => :get }
  #   end

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  # map.root :controller => "welcome"

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing or commenting them out if you're using named routes and resources.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
  map.root :controller => "members"
end
