# frozen_string_literal: true

module SaneBudget
  module Views
    module Posts
      class Update < SaneBudget::View
        include Deps['repositories.post_repo', 'components.icon']

        expose :post do |id:|
          post_repo.by_id( id )
        end

        expose :icons do
          common = "font-size: 21pt;"# may be a class here. Layout consistency!
          { edit:
            icon.render( 'edit', style: [ common, 'color: blue;'].join(' ') ),
            trash:
            icon.render( 'trash', style: [ common, 'color: red;'].join(' ') ),
          }
        end

      end
    end
  end
end