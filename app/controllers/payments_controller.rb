class PaymentsController < ApplicationController
  def one
  end

  def success
    render text: 'success'
  end

  def fail
    render text: 'fail'
  end
end
