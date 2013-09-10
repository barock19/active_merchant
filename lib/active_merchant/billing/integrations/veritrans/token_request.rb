module ActiveMerchant #:nodoc:
  module Billing #:nodoc:
    module Integrations #:nodoc:
      module Veritrans
        class TokenRequest
          include ActiveMerchant::PostsData
          attr_reader :browser, :merchant, :errors
          def initialize _fields, _commodities
            @fields = _fields
            @commodities = _commodities
            @fields['COMMODITIES'] = @commodities
            @fields['REPEAT_LINE'] = @commodities.count
          end
          
          def commit
            @response = ssl_post Veritrans.token_url, post_data.to_query
            build_response
            self
          end

          def build_response
            success_response = @response.match /TOKEN_MERCHANT=(?<merchant>.*)\nTOKEN_BROWSER=(?<browser>.*)/i
            error_response  = @response.match /ERROR_MESSAGE=(?<errors>.*)/
            if success_response
              @browser  = success_response[:browser]
              @merchant = success_response[:merchant]
            end
            if error_response
              @errors   = error_response[:errors]
              raise StandardError.new @errors
            end
          end

          def post_data
            @post_data ||= build_post_data
          end

          private
          def build_post_data 
            _pd = PostData.new
             @fields.each{|key, value| _pd[key] = value}
          end
        end
      end
    end
  end
end
