require "rails_helper"

RSpec.describe Member do
  it "exists" do
    hash = {
            "_id": "5cf5679a915ecad153ab68ef",
            "allies": [
                "Azula"
            ],
            "enemies": [
                "Sokka"
            ],
            "photoUrl": "https://vignette.wikia.nocookie.net/avatar/images/0/02/Bully_guard.png/revision/latest?cb=20120702232626",
            "name": "Bully guard",
            "affiliation": "Fire Nation"
            }
    
    member = Member.new(hash)

    expect(member).to be_a Member
    expect(member.name).to eq("Bully guard")
    expect(member.photo).to eq("https://vignette.wikia.nocookie.net/avatar/images/0/02/Bully_guard.png/revision/latest?cb=20120702232626")
    expect(member.allies).to eq("Azula")
    expect(member.enemies).to eq("Sokka")
    expect(member.affiliation).to eq("Fire Nation")
    expect(member.id).to eq("5cf5679a915ecad153ab68ef")
  end
end