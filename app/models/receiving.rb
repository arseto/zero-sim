class Receiving < ActiveRecord::Base
    belongs_to :doc_status
    has_many :receiving_detail
end
