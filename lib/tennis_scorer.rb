class TennisScorer
  def initialize()
    @scores = ["0", "15", "30", "40"]
    @puntos_jugador1 = 0
    @puntos_jugador2 = 0
  end

  def score 
    "#{@scores[@puntos_jugador1]} - #{@scores[@puntos_jugador2]}"
  end

  def jugador1_anota
    @puntos_jugador1 += 1
  end

  def jugador2_anota
    @puntos_jugador2 += 1
  end
end
