Rails.application.routes.draw do
  # calculate square
  get("/square/new",{:controller=>"calculators", :action=>"square"})
  get("/square/results",{:controller=>"calculators", :action=>"square_results"})

  # calculate square root
  get("/square_root/new",{:controller=>"calculators", :action=>"square_root"})
  get("/square_root/results",{:controller=>"calculators", :action=>"square_root_results"})

  # calculate payment
  get("/payment/new",{:controller=>"calculators", :action=>"payment"})
  get("/payment/results",{:controller=>"calculators", :action=>"payment_results"})

  # calculate random number
  get("/random/new",{:controller=>"calculators", :action=>"random"})
  get("/random/results",{:controller=>"calculators", :action=>"random_results"})

  #home page
  get("/", {:controller=>"calculators", :action=>"square"})

end
