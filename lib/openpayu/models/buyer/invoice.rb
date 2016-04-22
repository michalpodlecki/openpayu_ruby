# -*- encoding : utf-8 -*-
module OpenPayU
  module Models
    class Buyer::Invoice < Address
      attr_accessor :tin, :einvoice_requested
      validates :tin, presence: true
    end
  end
end
