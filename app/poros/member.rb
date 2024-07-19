class Member
  attr_reader :name,
              :photo,
              :allies,
              :enemies,
              :affiliation,
              :id
  def initialize(hash)
    @name = hash[:name]
    @photo = hash[:photoUrl]
    @allies = hash[:allies].to_sentence
    @enemies = hash[:enemies].to_sentence
    @affiliation = hash[:affiliation]
    @id = hash[:_id]
  end
end