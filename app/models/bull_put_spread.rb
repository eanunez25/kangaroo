class BullPutSpread < ApplicationRecord
  belongs_to :user

  def dte 
    today = Date.today
    (expiration - today).to_i
  end
end
