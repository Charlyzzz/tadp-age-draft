module Atacante
  attr_reader :potencial_ofensivo

  def atacar(guerrero)
    guerrero.energia -=
        (self.potencial_ofensivo -
            guerrero.potencial_defensivo) * 10
  end

end

module Defensor
  attr_accessor :energia, :potencial_defensivo
end

class Guerrero
  include Atacante
  include Defensor
end

class Espadachin < Guerrero

  attr_accessor :espada

  def potencial_ofensivo
    espada.potencial_ofensivo
  end

end

class Espada
  attr_accessor :potencial_ofensivo
end

class Misil
  include Atacante

  def initialize
    self.potencial_defensivo = 4000
  end
end

class Muralla
  include Defensor

end