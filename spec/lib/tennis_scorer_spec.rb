require 'spec_helper'
require 'tennis_scorer'

describe TennisScorer do
  before(:each) do
    @scorer = TennisScorer.new();
  end
  
  it "deberia mostrar marcador en 0 para un juego nuevo" do
    @scorer.score().should == "0 - 0"
  end

  it "deberia mostrar marcador 15 - 0 si jugador 1 anota" do
    @scorer.jugador1_anota
    @scorer.score().should == "15 - 0"
  end

  it "deberia mostrar marcador 15 - 15 si jugador 2 tambien anota" do
    @scorer.jugador1_anota
    @scorer.jugador2_anota
    @scorer.score().should == "15 - 15"
  end

  it "deberia mostrar marcador 30 - 0 si jugador 1 anota dos veces" do
    @scorer.jugador1_anota
    @scorer.jugador1_anota
    @scorer.score().should == "30 - 0"
  end

  it "deberia mostrar marcador 40 - 0 si jugador 1 anota tres veces" do
    @scorer.jugador1_anota
    @scorer.jugador1_anota
    @scorer.jugador1_anota
    @scorer.score().should == "40 - 0"
  end

  it "deberia mostrar marcador 0 - 40 si jugador 2 anota tres veces" do
    @scorer.jugador2_anota
    @scorer.jugador2_anota
    @scorer.jugador2_anota
    @scorer.score().should == "0 - 40"
  end

end
