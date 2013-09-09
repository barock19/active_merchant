module ActiveMerchant #:nodoc:
  module Billing #:nodoc:
    module Integrations #:nodoc:
      module Veritrans
        class Comodities
					include Enumerable
					@@item_keys = { :id       => 'COMMODITY_ID',
                         :price    => 'COMMODITY_PRICE',
                         :qty      => 'COMMODITY_QTY',
                         :name     => 'COMMODITY_NAME1',
                         :name_en  => 'COMMODITY_NAME2' }
					def initialize
						@_commodities = []
					end
					def <<(_item)
            # just return if is not kinda of hash
            return unless _item.is_a?(Hash)
            # convert items to veritrans valid params key
            holder_item = {}
            @@item_keys.each{|key, value| holder_item[value] = _item[key] }
            # set item english name same as indonesia name if set and englis name none
            holder_item['COMMODITY_NAME2'] = holder_item['COMMODITY_NAME1'] if !holder_item['COMMODITY_NAME1'].blank? and holder_item['COMMODITY_NAME2'].blank?
            @_commodities << holder_item
          end
					def inspect
						to_a
					end
					def to_a
						@_commodities
					end

					def each &block
						@_commodities.each do |commodity|
							block.call(commodity)
						end
					end
        end
      end
    end
  end
end
