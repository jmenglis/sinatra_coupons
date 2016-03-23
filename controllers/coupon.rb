class CouponsController < ApplicationController
  get '/' do
    erb :couponcreate
  end

  post '/create' do
    Coupon.create({
      :title           => params[:title],
      :description     => params[:description],
      :product         => params[:product],
      :discount_price  => params[:discount_price],
      :expiration_date => params[:expiration_date].to_s
    })
    # Coupon.create({
    #   :title           => 'Test',
    #   :description     => 'Test',
    #   :product         => 'Test',
    #   :discount_price  => 3.99,
    #   :expiration_date => '06/11/1988'
    #   }).to_json
    # redirect 'coupon/couponcompleteloop'
    @coupons = Coupon.all
    erb :couponcomplete
  end

    get '/couponcomplete' do
      @coupons = Coupon.all
      erb :couponcomplete
    end
end
