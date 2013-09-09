module ActiveMerchant #:nodoc:
  module Billing #:nodoc:
    module Integrations #:nodoc:
      module Veritrans
        module Common
        	def generate_token_request
	          # mapping :merchant_id, ''
	          # mapping :merchanthash, ''
	          # mapping :order_id, ''
	          # mapping :session_id, ''
	          # mapping :customer_specification_flag, '0'
	          # mapping :gross_amount, ''
	          # mapping :shipping_flag, '1'
	          # mapping :required_shipping_address, ''
	          # mapping :repeat_line, ''
	          # mapping :commodities, :commodity_id     => '',
	          #                       :commodity_price  => '',
	          #                       :commodity_qty    => '',
	          #                       :commodity_name1  => '',
	          #                       :commodity_name2  => ''
	          # #overide default
	          # mapping :finish_payment_return_url , ''
	          # mapping :unfinish_payment_return_url , ''
	          # mapping :error_payment_return_url , ''
	          # mapping :settlement_type, ''

	          # #autofill
	          # mapping :first_name, ''
	          # mapping :last_name, ''
	          # mapping :address1, ''
	          # mapping :address2, ''
	          # mapping :city, ''
	          # mapping :country_code, ''
	          # mapping :postal_code, ''
	          # mapping :phone, ''
	          # mapping :email, ''

	          # # require if  shipping_flag 1
	          # mapping :shipping_first_name, ''
	          # mapping :shipping_last_name, ''
	          # mapping :shipping_address1, ''
	          # mapping :shipping_address2, ''
	          # mapping :shipping_city, ''
	          # mapping :shipping_country_code, ''
	          # mapping :shipping_postal_code, ''
	          # mapping :shipping_phone, ''        		
        	end
        	def generate_merchanthash

        	end
        end
      end
    end
  end
end