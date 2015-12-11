module Mongo
  module Helpers
    module Collection
      def rename(new_name, drop_target = false)
        Database.new(database.client, Database::ADMIN, database.options)
        .command({
          renameCollection: "#{database.name}.#{name}",
          to: "#{database.name}.#{new_name}",
          dropTarget: drop_target
        })
      end
    end
  end
end

Mongo::Collection.send(:include, Mongo::Helpers::Collection)
