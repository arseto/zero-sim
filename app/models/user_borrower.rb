class UserBorrower < ActiveRecord::Base
  belongs_to :identity_type
end
