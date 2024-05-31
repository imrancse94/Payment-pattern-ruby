require_relative '../PaymentInterface'

class Stripe
    include PaymentInterface

    def pay(amount, card_no, cvv, expiry)
        # Make payment using Paypal
        # Implement your Paypal payment logic here
        # For the sake of example, let's assume the payment is successful
        puts "Payment made via Paypal: $#{amount} with card no #{card_no}"
        true # Returning true for successful payment
    end
end