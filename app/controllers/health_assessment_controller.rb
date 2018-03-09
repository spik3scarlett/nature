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
    end






end
