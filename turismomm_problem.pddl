(define (problem turismomm-1)
    (:domain turismomm)
    (:objects
     joao jose maria ;; turistas
     bike1 bike2 bike3 bike4 bike5 bike6 bike7 bike8 ;; bikes
     B16-PcaDoDiario B19-MercadoSJ B07-SantaRita B05-Alfandega B05-CaisDoApolo B15-PcaDaRepublica ;; pontos de Bike PE
     MercadoSJ IgNossaSraDosPretos PacoAlfandega BancoDoBrasil ;; pontos turísticos
    )

    (:init
     ;; caminhos entre pontos
     (adj B15-PcaDaRepublica B16-PcaDoDiario) (adj B16-PcaDoDiario B15-PcaDaRepublica)
     (adj B15-PcaDaRepublica B05-CaisDoApolo) (adj B05-CaisDoApolo B15-PcaDaRepublica)
     (adj B16-PcaDoDiario B19-MercadoSJ) (adj B19-MercadoSJ B16-PcaDoDiario)
     (adj B16-PcaDoDiario B07-SantaRita) (adj B16-PcaDoDiario B07-SantaRita)
     (adj B19-MercadoSJ B07-SantaRita) (adj B07-SantaRita B19-MercadoSJ)
     (adj B07-SantaRita B05-Alfandega) (adj B05-Alfandega B07-SantaRita)
     (adj B05-Alfandega B05-CaisDoApolo) (adj B05-CaisDoApolo B05-Alfandega)

     ;; caminhos de pontos de bike a pontos turisticos
     (walkable B16-PcaDoDiario IgNossaSraDosPretos) (walkable IgNossaSraDosPretos B16-PcaDoDiario)
     (walkable B19-MercadoSJ MercadoSJ) (walkable MercadoSJ B19-MercadoSJ)
     (walkable B05-Alfandega PacoAlfandega) (walkable PacoAlfandega B05-Alfandega)
     (walkable B05-CaisDoApolo BancoDoBrasil) (walkable BancoDoBrasil B05-CaisDoApolo)

     ;; localizações iniciais dos turistas
     (at joao B16-PcaDoDiario)
     (at maria B05-Alfandega)
     (at jose B05-CaisDoApolo)

     ;; localizações iniciais das bikes
     (at bike1 B15-PcaDaRepublica) ;; 1 na Pça da Rep.
     (at bike2 B16-PcaDoDiario) ;; 1 na Pça do Diario
     (at bike3 B05-CaisDoApolo) ;; 1 no Cais
     (at bike4 B19-MercadoSJ)
     (at bike5 B19-MercadoSJ) ;; 2 no Mercado SJ
     (at bike6 B07-SantaRita)
     (at bike7 B07-SantaRita)
     (at bike8 B07-SantaRita) ;; 3 em Santa Rita
    ) 
    
    (:goal

    )
)