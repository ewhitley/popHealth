module HealthDataStandards
  module CQM
    class MeasureSerializer < ActiveModel::Serializer
      attributes :_id, :name, :category, :hqmf_id
    end
  end
end
