class SimulationsController < ApplicationController
  before_action :set_chile

  def index
    @unplayed_matches = Match.where(played: false)
      .where("home_team_id = ? OR away_team_id = ?", @chile.id, @chile.id)
      .order(:date)
  end

  def simulate
    results = params[:results].to_unsafe_h
    simulation_results = SimulationsService.new(results, simulation_type: params[:simulation_type]).run

    world_cup_probability = (simulation_results.select { |k, v| k <= 6 }.values.sum / 10.0)
    playoff_probability = (simulation_results.select { |k, v| k == 7 }.values.sum / 10.0)
    elimination_probability = 100 - world_cup_probability - playoff_probability

    render turbo_stream: [
      turbo_stream.update(
        "simulation_results",
        partial: "simulations/simulation_results",
        locals: {
          world_cup_probability: world_cup_probability,
          playoff_probability: playoff_probability,
          elimination_probability: elimination_probability
        }
      )
    ]
  end

  private

  def set_chile
    @chile = NationalTeam.chile
  end
end
