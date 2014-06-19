class PaymentsController < ApplicationController

  def one
    @paydollar_url = Figaro.env.PAYDOLLAR_URL
    @merchant_id = Figaro.env.PAYDOLLAR_MERCHANT_ID
    @curr_code = Figaro.env.PAYDOLLAR_CURRCODE
    @amount = 0.05
    @order_id = Time.now.to_i % 1.month
  end

  def success
    render text: 'success'
  end

  def fail
    render text: 'fail'
  end

  def callback
    ##
    # http://requestb.in/vu0k3xvu?inspect#12wa42
    #
    # POST
    #
    # AlertCode:
    # eci:
    # sourceIp: 209.197.20.245
    # Holder:
    # PayRef: 1552597
    # src: 05
    # prc: 1
    # Ref: 893184
    # Cur: 840
    # Ord: 0000927821552597
    # payerAuth:
    # ipCountry:
    # Amt: 555.00
    # remark:
    # AuthId:
    # successcode: 1
    #
    # Parameters of interest are:
    #   - Ref: the order_id that we pass. absolutely must be there
    #   - Cur: currency code
    #   - merchantId: should be our merchant id. sometimes is missing
    #   - TxTime: sometimes missing. china timezone

    # Pseudocode:
    # @payment = Payment.find_by_id params[:Ref]
    # ....
  end
end
