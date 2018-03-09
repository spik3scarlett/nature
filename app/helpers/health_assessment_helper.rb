module HealthAssessmentHelper
 def wydaj_ocene(a)
      if a == (9 || 10)
        $ocena = "BARDZO DOBRY"
      elsif a == (7 || 8)
        $ocena = "DOBRY"
      elsif a == (5 || 6)
        $ocena = "ŚREDNI"
      elsif a == (3 || 4)
        $ocena = "OSŁABIONY"
      else
        $ocena = "BARDZO OSŁABIONY"
      end
  end

  def przelicz_parametry

    if $record[:stres] == "1" then $parametry[:pokarmowy] -= 1  end
    if $record[:poznawcze] == "1" then $parametry[:pokarmowy] -= 1  end
    if $record[:sen] == "1" then $parametry[:pokarmowy] -= 1  end
    if $record[:lek] == "1" then $parametry[:pokarmowy] -= 1  end
    if $record[:depresja] == "1" then $parametry[:pokarmowy] -= 1  end
    if $record[:dysforia] == "1" then $parametry[:pokarmowy] -= 1  end
    if $record[:tyton] == "1" then $parametry[:pokarmowy] -= 1  end
    if $record[:smog] == "1" then $parametry[:pokarmowy] -= 1  end
    if $record[:otc] == "1" then $parametry[:pokarmowy] -= 1  end
    if $record[:atb] == "1" then $parametry[:pokarmowy] -= 1  end
    if $record[:woda] == "1" then $parametry[:pokarmowy] -= 1  end
    if $record[:choroby] == "1" then $parametry[:pokarmowy] -= 1  end
    if $record[:kobiece] == "1" then $parametry[:pokarmowy] -= 1  end
    if $record[:nalot] == "1" then $parametry[:pokarmowy] -= 1  end
    if $record[:dziasla] == "1" then $parametry[:pokarmowy] -= 1  end
    if $record[:oczy] == "1" then $parametry[:pokarmowy] -= 1  end
    if $record[:skora] == "1" then $parametry[:pokarmowy] -= 1  end
    if $record[:bezsennosc] == "1" then $parametry[:pokarmowy] -= 1  end
    if $record[:menopauza] == "1" then $parametry[:pokarmowy] -= 1  end
    if $record[:starosc] == "1" then $parametry[:pokarmowy] -= 1  end
    if $record[:waga] == "1" then $parametry[:pokarmowy] -= 1  end
    if $record[:zaparcia] == "1" then $parametry[:pokarmowy] -= 1  end
    if $record[:libido] == "1" then $parametry[:pokarmowy] -= 1  end
    if $record[:kurcze] == "1" then $parametry[:pokarmowy] -= 1  end
    if $record[:kosci] == "1" then $parametry[:pokarmowy] -= 1  end
    if $record[:oddechy] == "1" then $parametry[:pokarmowy] -= 1  end
    if $record[:mocz] == "1" then $parametry[:pokarmowy] -= 1 end
    if $record[:stawy] == "1" then $parametry[:pokarmowy] -= 1  end
    if $record[:energia] == "1" then $parametry[:pokarmowy] -= 1  end
    if $record[:wlosy] == "1" then $parametry[:pokarmowy] -= 1  end
    if $record[:krzyz] == "1" then $parametry[:pokarmowy] -= 1  end
    if $record[:paznokcie] == "1" then $parametry[:pokarmowy] -= 1  end
    if $record[:zimno] == "1" then $parametry[:pokarmowy] -= 1  end
    if $record[:dusznosc] == "1" then $parametry[:pokarmowy] -= 1  end
    if $record[:zakazenia] == "1" then $parametry[:pokarmowy] -= 1  end
  end

end
