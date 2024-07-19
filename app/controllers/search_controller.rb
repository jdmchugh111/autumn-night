class SearchController < ApplicationController
  def index
    service = SearchService.new(params[:nation])
    @count = service.all_members_count
    @members = service.get_25_members.map do |member_hash|
      Member.new(member_hash)
    end
  end
end