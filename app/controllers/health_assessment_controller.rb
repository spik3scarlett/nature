class HealthAssessmentController < ApplicationController

    def create
       $i = 0
       $record = params["zdrowie"]
   
       redirect_to "/ankieta2"

    end
    
    

    def pytania
     $record = []
    end
    
    def pytania2
      redirect_to ankieta_path if $record == nil || $record.empty?
    end

    def pytania3
      redirect_to ankieta_path if $record == nil || $record.empty?
    end
    
    def pytania4
     redirect_to ankieta_path if $record == nil || $record.empty?
    end
    
    def update
      $i += 1
      if $i == 1
        $record.reverse_merge!(params["zdrowie"])
        redirect_to "/ankieta3" 
      else
        $record.reverse_merge!(params["zdrowie"])
        redirect_to "/ankieta4" 
      end
    end
    
    def wynik
      redirect_to ankieta_path if $record == nil || $record.empty? || $i != 2
      $parametry = {pokarmowy: 10, oczyszczanie: 10, sklad_ciala: 10, ruchu: 10, gruczolowy: 10, moczowy: 10, oddechowy: 10, immune: 10, nerwowy: 10, kardio: 10, watroba: 10 }  
     $record.each do |key, value| value.to_i end
       
     
      if $record[:stres] == 1 then $parametry[:pokarmowy] -= 1  end 
      if $record[:poznawcze] == 1 then $parametry[:oczyszczanie] -= 1  end 
      if $record[:sen] == 1 then $parametry[:skład_ciala] -= 1  end 
      if $record[:lek] == 1 then $parametry[:ruchu] -= 1  end 
      if $record[:depresja] == 1 then $parametry[:gruczolowy] -= 1  end 
      if $record[:dysforia] == 1 then $parametry[:moczowy] -= 1  end 
      if $record[:tyton] == 1 then $parametry[:oddechowy] -= 1  end 
      if $record[:smog] == 1 then $parametry[:immune] -= 1  end 
      if $record[:otc] == 1 then $parametry[:nerwowy] -= 1  end 
      if $record[:atb] == 1 then $parametry[:kardio] -= 1  end 
      if $record[:woda] == 1 then $parametry[:watroba] -= 1  end 
      if $record[:choroby] == 1 then $parametry[:pokarmowy] -= 1  end 
      if $record[:kobiece] == 1 then $parametry[:oczyszczanie] -= 1  end 
      if $record[:nalot] == 1 then $parametry[:sklad_ciala] -= 1  end 
      if $record[:dziasla] == 1 then $parametry[:ruchu] -= 1  end 
      if $record[:oczy] == 1 then $parametry[:gruczolowy] -= 1  end 
      if $record[:skora] == 1 then $parametry[:moczowy] -= 1  end 
      if $record[:bezsennosc] == 1 then $parametry[:oddechowy] -= 1  end 
      if $record[:menopauza] == 1 then $parametry[:immune] -= 1  end 
      if $record[:starosc] == 1 then $parametry[:nerwowy] -= 1  end 
      if $record[:waga] == 1 then $parametry[:kardio] -= 1  end 
      if $record[:zaparcia] == 1 then $parametry[:nerwowy] -= 1  end 
      if $record[:libido] == 1 then $parametry[:watroba] -= 1  end 
      if $record[:kurcze] == 1 then $parametry[:pokarmowy] -= 1  end 
      if $record[:kosci] == 1 then $parametry[:oczyszczanie] -= 1  end 
      if $record[:oddechy] == 1 then $parametry[:sklad_ciala] -= 1  end 
      if $record[:mocz] == 1 then $parametry[:ruchu] -= 1 end 
      if $record[:stawy] == 1 then $parametry[:gruczolowy] -= 1  end 
      if $record[:energia] == 1 then $parametry[:moczowy] -= 1  end 
      if $record[:wlosy] == 1 then $parametry[:oddechowy] -= 1  end 
      if $record[:krzyz] == 1 then $parametry[:immune] -= 1  end 
      if $record[:paznokcie] == 1 then $parametry[:nerwowy] -= 1  end 
      if $record[:zimno] == 1 then $parametry[:watroba] -= 1  end 
      if $record[:dusznosc] == 1 then $parametry[:pokarmowy] -= 1  end 
      if $record[:zakazenia] == 1 then $parametry[:oczyszczanie] -= 1  end 
        
        
    end
    
   
    

    
    
end
