class Comment

  attr_accessor :errors

  def initialize(args)
    @name = args[:name]
    @email = args[:email]
    @content = args[:content]

    @errors = []
  end

  def call

    ActiveRecord::Base.transaction do


      Comment.create!(
        name: @name,
        email: @email,
        content: @content
      )

      puts "CREATED"
    end


    return self
  end



end
