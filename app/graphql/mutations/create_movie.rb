module Mutations
  class CreateMovie < BaseMutation
    argument :name, String, required: true
    argument :image, String, required: true
    argument :date_start, String, required: true
    argument :date_end, String, required:true

    field :movie, Types::MovieType, null: true
    field :errors, [String], null: false

    def resolve(name:nil, image:nil, date_start:nil, date_end:nil)
      movie = Movie.new(
          name: name,
          image: image,
          date_start: date_start,
          date_end: date_end
        )

      if movie.save
        { movie: movie }
      else
        { errors: movie.errors.full_messages }
      end
    end
  end
end
