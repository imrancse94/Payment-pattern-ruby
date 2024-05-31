require_relative 'Providers/Paypal'
require_relative 'Providers/Stripe'
require_relative 'PaymentGateway'

paypal = Paypal.new  # It can be other Stripe 
gateway = PaymentGateway.new(paypal)

# Set payment details
gateway.amount = 100
gateway.card_no = "1234567890123456"
gateway.cvv = "123"
gateway.expiry = "12/25"

# Make the payment
result = gateway.make_payment

puts "Payment successful? #{result}"