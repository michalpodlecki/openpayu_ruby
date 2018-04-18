# -*- encoding : utf-8 -*-
module OpenPayU
  module Models
    class Buyer < Model
      attr_accessor :email, :phone, :first_name, :last_name, :language, :NIN, :has_accepted_rules
      validates_presence_of :email, presence: true
      validates_acceptance_of :has_accepted_rules, message: '[custom]Musisz zaakceptować regulamin'
      has_one_object :delivery # not required
      has_one_object :invoice  # not required
    end
  end
end
