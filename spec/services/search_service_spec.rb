require 'rails_helper'

RSpec.describe SearchService do
  describe "#all_members_count" do
    it "counts all members returned from search" do
      service1 = SearchService.new("fire+nation")
      service2 = SearchService.new("air+nomads")

      expect(service1.all_members_count).to eq(97)
      expect(service2.all_members_count).to eq(15)
    end

    describe "#get_25_members" do
      it "returns member data" do
        search = SearchService.new("fire+nation").get_25_members

        expect(search).to be_an Array
        expect(search[0]).to be_a Hash

        member_data = search[0]

        expect(member_data).to have_key :name
        expect(member_data[:name]).to be_a String

        expect(member_data).to have_key :photoUrl
        expect(member_data[:photoUrl]).to be_a String

        expect(member_data).to have_key :allies
        expect(member_data[:allies]).to be_an Array

        expect(member_data).to have_key :enemies
        expect(member_data[:enemies]).to be_an Array

        expect(member_data).to have_key :affiliation
        expect(member_data[:affiliation]).to be_a String

        expect(member_data).to have_key :_id
        expect(member_data[:_id]).to be_a String
      end
    end
  end
end