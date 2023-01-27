class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV['ADMIN_NAME'], password: ENV['ADMIN_KEY']
  
  def show
    @product_count = Order.count()
    @category_count = Category.count()
  end
end
