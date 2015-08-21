class OrderNotifier < ApplicationMailer

default_from: 'test man <test@gmail.com>'

  def recieved(order)
  @order = order

    mail to: order.email, subject: 'Your order confirmation'
  end


  def shipped
    @order = order

    mail to: order.email, subject: 'Your order has been shipped!'
  end
end
