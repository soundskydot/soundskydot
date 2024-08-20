# frozen_string_literal: true
ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: "Proposal"

  content title: "Proposal" do
  columns do
    panel "PROPOSAL" do
      para "-- Listen to Earn -- Solution for music's royalty distribution."

      para "Problem: The music industry, especially in Indonesia, always experiences problems due to royalty payments which are complained about by a number of songwriters who are members of the All Indonesian Composers Association (AKSI). They even introduced a new system called Digital Direct License (DDL) so that royalty payments no longer need to go through the National Collective Management Institute (LMKN), which is considered problematic. Many singers and songwriters have clashed to the point of giving each other lawsuits over the issue of incomplete royalty payments."

      para "Sample: Ahmad Dhani with Once Mekel, Posan Tobing with the band Kotak, Rieka Roslan with The Groove, Ndhank Surahman with Andre Taulany and Stinky."
      para "Solution: Ownership, Data Storage and Distibution on BLOCKCHAIN."
      para "Details flow:"
      para "// Admin // => Upload music's file in any format, eg: wav, mp4. => Fill form such like: title, year, album, etc. => Add price song / play in USDT => Add the shareholder of the song."
      para "publisher, singer, composer, song writer, etc. | percetage | DOT wallet address => Publish on NFT in Unique.network"
      para "// User // => play music => get earn based on percentage on wallet"
      para "// Shareholder // => get royalty basen on percentage => sent to wallet after song finished played."
    end
  # content title: proc { I18n.t("active_admin.dashboard") } do
  #   div class: "blank_slate_container", id: "dashboard_default_message" do
  #     span class: "blank_slate" do
  #       span I18n.t("active_admin.dashboard_welcome.welcome")
  #       small I18n.t("active_admin.dashboard_welcome.call_to_action")
  #     end
  #   end

    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content 
end
end
