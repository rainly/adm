# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_tanx_session',
  :secret      => '6c7e14a6d3e86a9a902136c6a9e77d06d86017f71b36f31e94447928f65ecfa3583f92f835639eca7c9e1e8356953d3b4c2c928dbfe3ba573b2adfbc3b0fadc0'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
