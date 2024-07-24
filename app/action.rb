# auto_register: false
# frozen_string_literal: true

require "hanami/action"

module SaneBudget
  class Action < Hanami::Action
    include Deps[ 'turbo_stream.answer' ]

    def current_account_id( request )
      request.env['rodauth'].session_value
    end
  end
end
