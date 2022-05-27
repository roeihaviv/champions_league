Rails.application.routes.draw do

  #------------------------------

  # Routes for the User account:

  # SIGN UP FORM
  get("/user_sign_up", { :controller => "user_authentication", :action => "sign_up_form" })        
  # CREATE RECORD
  post("/insert_user", { :controller => "user_authentication", :action => "create"  })
      
  # EDIT PROFILE FORM        
  get("/edit_user_profile", { :controller => "user_authentication", :action => "edit_profile_form" })       
  # UPDATE RECORD
  post("/modify_user", { :controller => "user_authentication", :action => "update" })
  
  # DELETE RECORD
  get("/cancel_user_account", { :controller => "user_authentication", :action => "destroy" })

  # ------------------------------

  # SIGN IN FORM
  get("/user_sign_in", { :controller => "user_authentication", :action => "sign_in_form" })
  # AUTHENTICATE AND STORE COOKIE
  post("/user_verify_credentials", { :controller => "user_authentication", :action => "create_cookie" })
  
  # SIGN OUT        
  get("/user_sign_out", { :controller => "user_authentication", :action => "destroy_cookies" })
             
  #------------------------------
  
  get("/search", { :controller => "search", :action => "search" })
  # Routes for the Final stadium resource:

  # CREATE
  post("/insert_final_stadium", { :controller => "final_stadia", :action => "create" })
          
  # READ
  get("/final_stadia", { :controller => "final_stadia", :action => "index" })
  
  get("/final_stadia/:path_id", { :controller => "final_stadia", :action => "show" })
  
  # UPDATE
  
  post("/modify_final_stadium/:path_id", { :controller => "final_stadia", :action => "update" })
  
  # DELETE
  get("/delete_final_stadium/:path_id", { :controller => "final_stadia", :action => "destroy" })

  #------------------------------

  # Routes for the Coach resource:

  # CREATE
  post("/insert_coach", { :controller => "coaches", :action => "create" })
          
  # READ
  get("/coaches", { :controller => "coaches", :action => "index" })
  
  get("/coaches/:path_id", { :controller => "coaches", :action => "show" })
  
  # UPDATE
  
  post("/modify_coach/:path_id", { :controller => "coaches", :action => "update" })
  
  # DELETE
  get("/delete_coach/:path_id", { :controller => "coaches", :action => "destroy" })

  #------------------------------

  # Routes for the Top scorer resource:

  # CREATE
  post("/insert_top_scorer", { :controller => "top_scorers", :action => "create" })
          
  # READ
  get("/top_scorers", { :controller => "top_scorers", :action => "index" })
  
  get("/top_scorers/:path_id", { :controller => "top_scorers", :action => "show" })
  
  # UPDATE
  
  post("/modify_top_scorer/:path_id", { :controller => "top_scorers", :action => "update" })
  
  # DELETE
  get("/delete_top_scorer/:path_id", { :controller => "top_scorers", :action => "destroy" })

  #------------------------------

  # Routes for the Season resource:


  get("/this_season", { :controller => "seasons", :action => "this_season" })

  get("/last_season", { :controller => "seasons", :action => "last_season" })

  get("/before_two_season", { :controller => "seasons", :action => "before_two_season" })

  get("/before_three_season", { :controller => "seasons", :action => "before_three_season" })

  get("/before_four_season", { :controller => "seasons", :action => "before_four_season" })
  # CREATE
  post("/insert_season", { :controller => "seasons", :action => "create" })
          
  # READ
  get("/", { :controller => "seasons", :action => "homepage" })

  get("/seasons", { :controller => "seasons", :action => "index" })
  
  get("/seasons/:path_id", { :controller => "seasons", :action => "show" })
  
  # UPDATE
  
  post("/modify_season/:path_id", { :controller => "seasons", :action => "update" })
  
  # DELETE
  get("/delete_season/:path_id", { :controller => "seasons", :action => "destroy" })

  #------------------------------

  # Routes for the Club resource:

  # CREATE
  post("/insert_club", { :controller => "clubs", :action => "create" })
          
  # READ
  get("/clubs", { :controller => "clubs", :action => "index" })
  
  get("/clubs/:path_id", { :controller => "clubs", :action => "show" })
  
  # UPDATE
  
  post("/modify_club/:path_id", { :controller => "clubs", :action => "update" })
  
  # DELETE
  get("/delete_club/:path_id", { :controller => "clubs", :action => "destroy" })

  #------------------------------

end
