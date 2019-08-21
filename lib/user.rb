class User
  attr_reader :name, :jokes

  def initialize(name)
    @name = name
    @jokes = []
  end

  def tell(user, joke)
    user.jokes << joke
    @jokes
  end

  def joke_by_id(id)
    @jokes.find do |joke|
      joke.id == id
    end
  end

  def learn(joke)
    @jokes << joke
  end
end
