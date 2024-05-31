module PaymentInterface
    def pay(amount, card_no, cvv, expiry)
      raise NotImplementedError, "pay method must be implemented"
    end
  end
  