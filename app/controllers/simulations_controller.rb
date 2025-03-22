class SimulationsController < ApplicationController
  before_action :set_chile

  def index
    @unplayed_matches = Match.where(played: false)
      .where("home_team_id = ? OR away_team_id = ?", @chile.id, @chile.id)
      .order(:date)
  end

  def simulate
    results = params[:results].to_unsafe_h
    Rails.logger.info("Results: #{results}")
    simulation_results = SimulationsService.new(results).run

    render turbo_stream: [
      turbo_stream.update("simulation_results", partial: "simulations/simulation_results", locals: { simulation_results: simulation_results })
    ]
  end

  private

  def set_chile
    @chile = NationalTeam.chile
  end
end
