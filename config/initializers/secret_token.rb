# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
ControlRequest::Application.config.secret_key_base = '9230f403d6457f6827373276999b53a5872dfcc6d3af093f243561be81175dfaae7d2143bbff690af8352fb84e6218526367b501ccea0276de2e0b6121311b60'
