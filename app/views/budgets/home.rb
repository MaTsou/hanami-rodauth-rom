# frozen_string_literal: true

module SaneBudget
  module Views
    module Budgets
      class Home < SaneBudget::View
        include Deps['repositories.post_repo']

        expose :posts do |account_id:|
          post_repo.from_account( account_id )
        end

        expose :post_author do |posts|
          posts&.first&.account&.email
        end

      end
    end
  end
end
