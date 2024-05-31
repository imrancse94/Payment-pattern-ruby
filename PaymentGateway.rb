class PaymentGateway

    attr_accessor :amount, :card_no, :cvv, :expiry
  
    def initialize(payment)
      @payment = payment
    end
  
    def set_amount(amount)
      @amount = amount
      self
    end
  
    def set_card_no(card_no)
      @card_no = card_no
      self
    end
  
    def set_cvv(cvv)
      @cvv = cvv
      self
    end
  
    def set_expiry(expiry)
      @expiry = expiry
      self
    end
  
    def make_payment
      is_payment_success = false
  
      begin
        raise 'Amount not defined' if @amount.nil?
        raise 'Expiry not defined' if @expiry.nil?
        raise 'Card no not defined' if @card_no.nil?
        raise 'CVV not defined' if @cvv.nil?
  
        # DB transaction
  
        # operation
  
        is_payment_success = @payment.pay(@amount, @card_no, @cvv, @expiry)
  
        # commit
      rescue StandardError => ex
        # Rollback
      end
  
      is_payment_success
    end
  end
  