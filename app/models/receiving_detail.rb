class ReceivingDetail < ActiveRecord::Base
  belongs_to :receiving
  belongs_to :sku
end
