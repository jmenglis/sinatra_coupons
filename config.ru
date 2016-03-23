# base
require 'sinatra/base'

# controllers
require './controllers/application'
require './controllers/coupon'

# models
require './models/coupon'

# mapping resource to controller
map('/')       { run ApplicationController }
map('/coupon') { run CouponsController }
