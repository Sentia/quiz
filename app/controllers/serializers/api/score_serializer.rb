require 'api/serializer'

module Api
  class ScoreSerializer < Serializer
    attributes :id, :created_at, :updated_at, :name, :score

    private
    #...
    
  end
end