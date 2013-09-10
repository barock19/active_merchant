require 'test_helper'

class VeritransNotificationTest < Test::Unit::TestCase
  include ActiveMerchant::Billing::Integrations

  # def setup
  #   @veritrans = Veritrans::Notification.new(http_raw_data)
  # end

  # def test_accessors
  #   assert @veritrans.complete?
  #   assert_equal "", @veritrans.status
  #   assert_equal "", @veritrans.transaction_id
  #   assert_equal "", @veritrans.item_id
  #   assert_equal "", @veritrans.gross
  #   assert_equal "", @veritrans.currency
  #   assert_equal "", @veritrans.received_at
  #   assert @veritrans.test?
  # end

  # def test_compositions
  #   assert_equal Money.new(3166, 'USD'), @veritrans.amount
  # end

  # # Replace with real successful acknowledgement code
  # def test_acknowledgement

  # end

  # def test_send_acknowledgement
  # end

  # def test_respond_to_acknowledge
  #   assert @veritrans.respond_to?(:acknowledge)
  # end

  # private
  # def http_raw_data
  #   ""
  # end
end
