class HomeController < ApplicationController
  def index
    @song = Song.first    
  end

  def playing
    puts "==== Playing ====="
    song_id = params[:song_id]
    song = Song.find_by(song_id)
    if song
      # puts song.band.members.first.royalty
      puts song.price
      song.band.members.each do |member|
        amount = member.royalty / 100 * song.price
        member.incomes.create!(song: song, amount: amount, user_id: 1)
      end
      render json: { success: true }
    end
  end
end
