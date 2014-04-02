require "update_in_batches/version"
require 'active_record'

module UpdateInBatches
  def update_in_batches(args)
    size = args.delete(:batch_size) || 1000
    scoped.select(:id)
         .find_in_batches(batch_size: size) do |batch|
      scoped.where(id: batch.map(&:id))
           .update_all(args)
    end
  end
end

ActiveRecord::Base.extend(UpdateInBatches)
