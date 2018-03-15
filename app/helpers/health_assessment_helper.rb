module HealthAssessmentHelper
 def wydaj_ocene(a)
      if a == 9 || a == 10
        $ocena = "BARDZO DOBRY"
      elsif a == 7 || a == 8
        $ocena = "DOBRY"
      elsif a == 5 || a == 6
        $ocena = "ŚREDNI"
      elsif a == 3 || a== 4
        $ocena = "OSŁABIONY"
      else
        $ocena = "BARDZO OSŁABIONY"
      end
  end

  def przelicz_parametry

    if $record[:wlosy_wypadanie] == "1" then $parametry[:pokarmowy] -= 1 && $parametry[:gruczolowy] -= 1 end
    if $record[:cera] == "1" then $parametry[:watroba] -= 1 && $parametry[:energia] -= 1 && $parametry[:gruczolowy] -= 1 && $parametry[:oczyszczanie] -= 1 end
    if $record[:skora_defekty] == "1" then $parametry[:gruczolowy] -= 1 && $parametry[:watroba] -= 1 && $parametry[:energia] -= 1 && $parametry[:pokarmowy] -= 1 && $parametry[:oczyszczanie] -= 1   && $parametry[:moczowy] -= 1 end
    if $record[:paznokcie] == "1" then $parametry[:energia] -= 1 && $parametry[:oddechowy] -= 1 && $parametry[:pokarmowy] -= 1 end
    if $record[:wlosy_zniszczone] == "1" then $parametry[:energia] -= 1  && $parametry[:gruczolowy] -= 1 && $parametry[:pokarmowy] -= 1  end
    if $record[:dysmenorrhea] == "1" then $parametry[:gruczolowy] -= 1 && $parametry[:nerwowy] -= 1  end
    if $record[:zimno] == "1" then $parametry[:gruczolowy] -= 1  && $parametry[:kardio] -= 1 && $parametry[:energia] -= 1 end
    if $record[:menopauza] == "1" then $parametry[:kardio] -= 1 && $parametry[:nerwowy] -= 1  && $parametry[:ruchu] -= 1 end
    if $record[:trawienie] == "1" then $parametry[:pokarmowy] -= 1 && $parametry[:energia] -= 1 && $parametry[:watroba] -= 1 end
    if $record[:gaz] == "1" then $parametry[:pokarmowy] -= 1 && $parametry[:watroba] -= 1  end
    if $record[:zapach] == "1" then $parametry[:pokarmowy] -= 1 && $parametry[:watroba] -= 1 && $parametry[:oczyszczanie] -= 1  end
    if $record[:choroby] == "1" then $parametry.each do |k, v| $parametry[k] -= 1 end end
    if $record[:oczy] == "1" then $parametry[:moczowy] -= 1 && $parametry[:kardio] -= 1  end
    if $record[:odpornosc] == "1" then $parametry[:immune] -= 1 && $parametry[:oddechowy] -= 1 && $parametry[:moczowy] -= 1 && $parametry[:energia] -= 1 && $parametry[:pokarmowy] -= 1 end
    if $record[:dziasla] == "1" then $parametry[:pokarmowy] -= 1 && $parametry[:immune] -= 1  end
    if $record[:zmeczenie] == "1" then $parametry[:pokarmowy] -= 1 && $parametry[:gruczolowy] -= 1 && $parametry[:oczyszczanie] -= 1 && $parametry[:nerwowy] -= 1 && $parametry[:kardio] -= 1 end
    if $record[:zaparcia] == "1" then $parametry[:pokarmowy] -= 1 && $parametry[:nerwowy] -= 1  end
    if $record[:rekonwalescencja] == "1" then $parametry[:kardio] -= 1 && $parametry[:oddechowy] -= 1 && $parametry[:gruczolowy] -= 1 && $parametry[:energia] -= 1 end
    if $record[:libido] == "1" then $parametry[:nerwowy] -= 1 && $parametry[:gruczolowy] -= 1 && $parametry[:kardio] -= 1 end
    if $record[:stolce] == "1" then $parametry[:pokarmowy] -= 1 && $parametry[:nerwowy] -= 1 end
    if $record[:apetyt] == "1" then $parametry[:pokarmowy] -= 1 && $parametry[:gruczolowy] -= 1 && $parametry[:nerwowy] -= 1 end
    if $record[:aktywnosc] == "1" then $parametry[:pokarmowy] -= 1 && $parametry[:kardio] -= 1 && $parametry[:ruchu] -= 1 && $parametry[:energia] -= 1 && $parametry[:immune] -= 1 end
    if $record[:owoce] == "1" then $parametry[:pokarmowy] -= 1 && $parametry[:kardio] -= 1 && $parametry[:energia] -= 1 end
    if $record[:cukier] == "1" then $parametry.each do |k, v| $parametry[k] -= 1 end end
    if $record[:alkohol] == "1" then $parametry.each do |k, v| $parametry[k] -= 1 end end
    if $record[:maka] == "1" then $parametry[:pokarmowy] -= 1 && $parametry[:kardio] -= 1 && $parametry[:nerwowy] -= 1 && $parametry[:energia] -= 1 end
    if $record[:mieso] == "1" then $parametry.each do |k, v| $parametry[k] -= 1 end end
    if $record[:nabial] == "1" then $parametry[:pokarmowy] -= 1 && $parametry[:oczyszczanie] -= 1 && $parametry[:watroba] -= 1 end
    if $record[:tluszcz] == "1" then $parametry[:pokarmowy] -= 1 && $parametry[:kardio] -= 1 && $parametry[:immune] -= 1 && $parametry[:nerwowy] -= 1 end
    if $record[:waga] == "1" then $parametry[:pokarmowy] -= 1 && $parametry[:kardio] -= 1 && $parametry[:gruczolowy] -= 1 && $parametry[:energia] -= 1 end
    if $record[:tyton] == "1" then $parametry.each do |k, v| $parametry[k] -= 1 end end
    if $record[:smog] == "1" then $parametry.each do |k, v| $parametry[k] -= 1 end end
    if $record[:otc] == "1" then $parametry[:oczyszczanie] -= 1 && $parametry[:watroba] -= 1 end
    if $record[:rx] == "1" then $parametry.each do |k, v| $parametry[k] -= 1 end end
    if $record[:woda] == "1" then $parametry[:oczyszczanie] -= 1 && $parametry[:moczowy] -= 1 && $parametry[:watroba] -= 1 end
    if $record[:cleaners] == "1" then $parametry[:oddechowy] -= 1 && $parametry[:oczyszczanie] -= 1 && $parametry[:watroba] -= 1 && $parametry[:immune] -= 1 end
    if $record[:chemia] == "1" then $parametry[:oddechowy] -= 1 && $parametry[:oczyszczanie] -= 1 && $parametry[:watroba] -= 1 && $parametry[:immune] -= 1 end
    if $record[:alergia] == "1" then $parametry[:immune] -= 1 && $parametry[:energia] -= 1  end
    if $record[:wziewne] == "1" then $parametry[:immune] -= 1 && $parametry[:energia] -= 1 end
    if $record[:energia] == "1" then $parametry.each do |k, v| $parametry[k] -= 1 end end
    if $record[:stres] == "1" then $parametry.each do |k, v| $parametry[k] -= 1 end end
    if $record[:poznawcze] == "1" then $parametry[:nerwowy] -= 1 && $parametry[:pokarmowy] -= 1 end
    if $record[:lek] == "1" then $parametry[:nerwowy] -= 1 && $parametry[:energia] -= 1  && $parametry[:pokarmowy] -= 1 && $parametry[:oczyszczanie] -= 1 end
    if $record[:depresja] == "1" then $parametry[:energia] -= 1 && $parametry[:nerwowy] -= 1  && $parametry[:pokarmowy] -= 1 && $parametry[:oczyszczanie] -= 1 end
    if $record[:dysforia] == "1" then $parametry[:nerwowy] -= 1 && $parametry[:pokarmowy] -= 1 end
    if $record[:sen] == "1" then $parametry[:nerwowy] -= 1 && $parametry[:pokarmowy] -= 1 end
    if $record[:depresja2] == "1" then $parametry[:energia] -= 1 && $parametry[:nerwowy] -= 1  && $parametry[:pokarmowy] -= 1 && $parametry[:oczyszczanie] -= 1 end
    if $record[:oddechy] == "1" then $parametry[:oddechowy] -= 1  && $parametry[:kardio] -= 1  end
    if $record[:flegma] == "1" then $parametry[:oddechowy] -= 1 && $parametry[:immune] -= 1  end
    if $record[:starosc] == "1" then $parametry.each do |k, v| $parametry[k] -= 1 end end
    if $record[:czestomocz] == "1" then $parametry[:moczowy] -= 1  && $parametry[:gruczolowy] -= 1  end
    if $record[:dysuria] == "1" then $parametry[:moczowy] -= 1  && $parametry[:immune] -= 1  end
    if $record[:nycturia] == "1" then $parametry[:nerwowy] -= 1  && $parametry[:kardio] -= 1  end
    if $record[:stawy] == "1" then $parametry[:ruchu] -= 1  end
    if $record[:kosci] == "1" then $parametry[:ruchu] -= 1 && $parametry[:gruczolowy] -= 1  end
    if $record[:kurcze] == "1" then $parametry[:nerwowy] -= 1  && $parametry[:energia] -= 1  && $parametry[:kardio] -= 1  end
    if $record[:zakazenia] == "1" then $parametry[:immune] -= 1 end
    return nil  
  end


end
