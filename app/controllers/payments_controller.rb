class PaymentsController < ApplicationController

  def one
    @paydollar_url = Figaro.env.PAYDOLLAR_URL
    @merchant_id = Figaro.env.PAYDOLLAR_MERCHANT_ID
    @curr_code = Figaro.env.PAYDOLLAR_CURRCODE
    @amount = 3000
    @order_id = 1
  end

  def success
    render text: 'success'
  end

  def fail
    render text: 'fail'
  end
end
