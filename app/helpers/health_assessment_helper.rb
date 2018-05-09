module HealthAssessmentHelper
 def wydaj_ocene(a)
      if a >=80
        $ocena = "BARDZO DOBRY"
      elsif a >= 60 && a <80
        $ocena = "DOBRY"
      elsif a >= 40 && a <60
        $ocena = "ŚREDNI"
      elsif a >= 20 && a <40
        $ocena = "OSŁABIONY"
      else
        $ocena = "BARDZO OSŁABIONY"
      end
  end

  def wstaw_kolor(a)
    if a >=80
      "bg-success"
    elsif a >= 60 && a <80
      "bg-primary"
    elsif a >= 40 && a <60
      "bg-info"
    elsif a >= 20 && a <40
      "bg-warning"
    else
      "bg-danger"
    end

  end

  def policz_procent(a, b)
    if ((a*100)/b) > 5
      return ((a*100)/b).floor
    else
      return 5
    end
  end

  def przelicz_parametry

    if $record[:wlosy_wypadanie] == "1"
      $parametry[:pokarmowy] -= 1
      $parametry[:hormonalny] -= 1
    end
    if $record[:cera] == "1"
      $parametry[:energia] -= 1
      $parametry[:hormonalny] -= 1

    end
    if $record[:skora_defekty] == "1"
      $parametry[:hormonalny] -= 1
      $parametry[:energia] -= 1
      $parametry[:pokarmowy] -= 1
      $parametry[:moczowy] -= 1
    end
    if $record[:paznokcie] == "1"
      $parametry[:energia] -= 1
      $parametry[:oddechowy] -= 1
      $parametry[:pokarmowy] -= 1
    end
    if $record[:wlosy_zniszczone] == "1"
      $parametry[:energia] -= 1
      $parametry[:hormonalny] -= 1
      $parametry[:pokarmowy] -= 1
    end
    if $record[:dysmenorrhea] == "1"
      $parametry[:hormonalny] -= 1
      $parametry[:nerwowy] -= 1
     end
    if $record[:zimno] == "1"
      $parametry[:hormonalny] -= 1
      $parametry[:kardio] -= 1
      $parametry[:energia] -= 1
    end
    if $record[:menopauza] == "1"
      $parametry[:kardio] -= 1
      $parametry[:nerwowy] -= 1
      $parametry[:ruchu] -= 1
    end
    if $record[:trawienie] == "1"
      $parametry[:pokarmowy] -= 1
      $parametry[:energia] -= 1
    end
    if $record[:gaz] == "1"
      $parametry[:pokarmowy] -= 1
    end
    if $record[:zapach] == "1"
      $parametry[:pokarmowy] -= 1
    end
    if $record[:choroby] == "1"
      $parametry.each do |k, v| $parametry[k] -= 1 end
    end
    if $record[:oczy] == "1"
      $parametry[:moczowy] -= 1
      $parametry[:kardio] -= 1
    end
    if $record[:odpornosc] == "1"
      $parametry[:immune] -= 1
      $parametry[:oddechowy] -= 1
      $parametry[:moczowy] -= 1
      $parametry[:energia] -= 1
      $parametry[:pokarmowy] -= 1
    end
    if $record[:dziasla] == "1"
      $parametry[:pokarmowy] -= 1
      $parametry[:immune] -= 1
    end
    if $record[:zmeczenie] == "1"
      $parametry[:pokarmowy] -= 1
      $parametry[:hormonalny] -= 1
      $parametry[:nerwowy] -= 1
      $parametry[:kardio] -= 1
    end
    if $record[:zaparcia] == "1"
      $parametry[:pokarmowy] -= 1
      $parametry[:nerwowy] -= 1
    end
    if $record[:rekonwalescencja] == "1"
      $parametry[:kardio] -= 1
      $parametry[:oddechowy] -= 1
      $parametry[:hormonalny] -= 1
      $parametry[:energia] -= 1
    end
    if $record[:libido] == "1"
      $parametry[:nerwowy] -= 1
      $parametry[:hormonalny] -= 1
      $parametry[:kardio] -= 1
    end
    if $record[:stolce] == "1"
      $parametry[:pokarmowy] -= 1
      $parametry[:nerwowy] -= 1
    end
    if $record[:apetyt] == "1"
      $parametry[:pokarmowy] -= 1
      $parametry[:hormonalny] -= 1
      $parametry[:nerwowy] -= 1
    end
    if $record[:aktywnosc] == "1"
      $parametry[:pokarmowy] -= 1
      $parametry[:kardio] -= 1
      $parametry[:ruchu] -= 1
      $parametry[:energia] -= 1
      $parametry[:immune] -= 1
    end
    if $record[:owoce] == "1"
      $parametry[:pokarmowy] -= 1
      $parametry[:kardio] -= 1
      $parametry[:energia] -= 1
    end
    if $record[:cukier] == "1"
      $parametry.each do |k, v| $parametry[k] -= 1 end
    end
    if $record[:alkohol] == "1"
      $parametry.each do |k, v| $parametry[k] -= 1 end
    end
    if $record[:maka] == "1"
      $parametry[:pokarmowy] -= 1
      $parametry[:kardio] -= 1
      $parametry[:nerwowy] -= 1
      $parametry[:energia] -= 1
    end
    if $record[:mieso] == "1"
      $parametry.each do |k, v| $parametry[k] -= 1 end
    end
    if $record[:nabial] == "1"
      $parametry[:pokarmowy] -= 1
      $parametry[:kardio] -= 1
    end
    if $record[:tluszcz] == "1"
      $parametry[:pokarmowy] -= 1
      $parametry[:kardio] -= 1
      $parametry[:immune] -= 1
      $parametry[:nerwowy] -= 1
    end
    if $record[:waga] == "1"
      $parametry[:pokarmowy] -= 1
      $parametry[:kardio] -= 1
      $parametry[:hormonalny] -= 1
      $parametry[:energia] -= 1
    end
    if $record[:tyton] == "1"
      $parametry.each do |k, v| $parametry[k] -= 1 end
    end
    if $record[:smog] == "1"
      $parametry.each do |k, v| $parametry[k] -= 1 end
    end
    if $record[:otc] == "1"
      $parametry.each do |k, v| $parametry[k] -= 1 end
    end
    if $record[:rx] == "1"
      $parametry.each do |k, v| $parametry[k] -= 1 end
    end
    if $record[:woda] == "1"
      $parametry[:moczowy] -= 1
    end
    if $record[:cleaners] == "1"
      $parametry[:oddechowy] -= 1
      $parametry[:immune] -= 1
    end
    if $record[:chemia] == "1"
      $parametry[:oddechowy] -= 1
      $parametry[:immune] -= 1
    end
    if $record[:alergia] == "1"
      $parametry[:immune] -= 1
      $parametry[:energia] -= 1
    end
    if $record[:wziewne] == "1"
      $parametry[:immune] -= 1
      $parametry[:energia] -= 1
    end
    if $record[:energia] == "1"
      $parametry.each do |k, v| $parametry[k] -= 1 end
    end
    if $record[:stres] == "1"
      $parametry.each do |k, v| $parametry[k] -= 1 end
    end
    if $record[:poznawcze] == "1"
      $parametry[:nerwowy] -= 1
      $parametry[:pokarmowy] -= 1
    end
    if $record[:lek] == "1"
      $parametry[:nerwowy] -= 1
      $parametry[:energia] -= 1
      $parametry[:pokarmowy] -= 1
    end
    if $record[:depresja] == "1"
      $parametry[:energia] -= 1
      $parametry[:nerwowy] -= 1
      $parametry[:pokarmowy] -= 1
    end
    if $record[:dysforia] == "1"
      $parametry[:nerwowy] -= 1
      $parametry[:pokarmowy] -= 1
    end
    if $record[:sen] == "1"
      $parametry[:nerwowy] -= 1
      $parametry[:pokarmowy] -= 1
    end
    if $record[:depresja2] == "1"
      $parametry[:energia] -= 1
      $parametry[:nerwowy] -= 1
      $parametry[:pokarmowy] -= 1
    end
    if $record[:oddechy] == "1"
      $parametry[:oddechowy] -= 1
      $parametry[:kardio] -= 1
    end
    if $record[:flegma] == "1"
      $parametry[:oddechowy] -= 1
      $parametry[:immune] -= 1
    end
    if $record[:starosc] == "1"
      $parametry.each do |k, v| $parametry[k] -= 1 end
    end
    if $record[:czestomocz] == "1"
      $parametry[:moczowy] -= 1
      $parametry[:hormonalny] -= 1
    end
    if $record[:dysuria] == "1"
      $parametry[:moczowy] -= 1
      $parametry[:immune] -= 1
    end
    if $record[:nycturia] == "1"
      $parametry[:nerwowy] -= 1
      $parametry[:kardio] -= 1
    end
    if $record[:stawy] == "1"
      $parametry[:ruchu] -= 1
    end
    if $record[:kosci] == "1"
      $parametry[:ruchu] -= 1
      $parametry[:hormonalny] -= 1
    end
    if $record[:kurcze] == "1"
      $parametry[:nerwowy] -= 1
      $parametry[:energia] -= 1
      $parametry[:kardio] -= 1
    end
    if $record[:zakazenia] == "1"
      $parametry[:immune] -= 1
    end
    return nil
  end



end
