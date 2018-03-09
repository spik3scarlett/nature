module HealthAssessmentHelper
 def wydaj_ocene(a)
      if a == 9 || 10 
        $ocena = "SILNY"
      elsif a == 7 || 8
        $ocena = "ŚREDNIO SILNY"
      elsif a == 5 || 6
        $ocena = "ŚREDNI"
      elsif a == 3 || 4
        $ocena = "ŚREDNIO SŁABY"
      else 
        $ocena = "SŁABY"
      end
      
 end
end
