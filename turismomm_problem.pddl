(define (problem turismomm-1)
    (:domain turismomm)
    (:objects
     turist-joao turist-jose turist-maria ;; turistas
     bike1 bike2 bike3 bike4 bike5 bike6 bike7 bike8 ;; bikes
     station-PcaDoDiario station-MercadoSJ station-SantaRita station-Alfandega station-CaisDoApolo station-PcaDaRepublica ;; pontos de Bike PE
     MercadoSJ IgNossaSraDosPretos PacoAlfandega BancoDoBrasil PcaDaRepublica;; pontos turísticos
    )

    (:init

     (waited turist-joao)
     (waited turist-maria)
     (waited turist-jose)

     (is-turist turist-joao)
     (is-turist turist-maria)
     (is-turist turist-jose)

     (is-bike bike1)
     (is-bike bike2)
     (is-bike bike3)
     (is-bike bike4)
     (is-bike bike5)
     (is-bike bike6)
     (is-bike bike7)
     (is-bike bike8)

     (is-turistic-point MercadoSJ)
     (is-turistic-point IgNossaSraDosPretos)
     (is-turistic-point PacoAlfandega)
     (is-turistic-point BancoDoBrasil)
     (is-turistic-point PcaDaRepublica)
   
     (is-bike-station station-PcaDoDiario)
     (is-bike-station station-MercadoSJ)
     (is-bike-station station-SantaRita)
     (is-bike-station station-Alfandega)
     (is-bike-station station-CaisDoApolo)
     (is-bike-station station-PcaDaRepublica)

     ;; caminhos entre pontos
     (adj station-PcaDaRepublica station-PcaDoDiario) (adj station-PcaDoDiario station-PcaDaRepublica)
     (adj station-PcaDaRepublica station-CaisDoApolo) (adj station-CaisDoApolo station-PcaDaRepublica)
     (adj station-PcaDoDiario station-MercadoSJ) (adj station-MercadoSJ station-PcaDoDiario)
     (adj station-PcaDoDiario station-SantaRita) (adj station-PcaDoDiario station-SantaRita)
     (adj station-MercadoSJ station-SantaRita) (adj station-SantaRita station-MercadoSJ)
     (adj station-SantaRita station-Alfandega) (adj station-Alfandega station-SantaRita)
     (adj station-Alfandega station-CaisDoApolo) (adj station-CaisDoApolo station-Alfandega)

     ;; caminhos de pontos de bike a pontos turisticos
     (walkable station-PcaDoDiario IgNossaSraDosPretos) (walkable IgNossaSraDosPretos station-PcaDoDiario)
     (walkable station-MercadoSJ MercadoSJ) (walkable MercadoSJ station-MercadoSJ)
     (walkable station-Alfandega PacoAlfandega) (walkable PacoAlfandega station-Alfandega)
     (walkable station-CaisDoApolo BancoDoBrasil) (walkable BancoDoBrasil station-CaisDoApolo)
     (walkable station-PcaDaRepublica PcaDaRepublica) (walkable PcaDaRepublica station-PcaDaRepublica)

     ;; localizações iniciais dos turistas
     (at turist-joao station-PcaDoDiario)
     (at turist-maria station-Alfandega)
     (at turist-jose station-CaisDoApolo)

     ;; localizações iniciais das bikes
     (at bike1 station-PcaDaRepublica) ;; 1 na Pça da Rep.
     (at bike2 station-PcaDoDiario) ;; 1 na Pça do Diario
     (at bike3 station-CaisDoApolo) ;; 1 no Cais
     (at bike4 station-MercadoSJ)
     (at bike5 station-MercadoSJ) ;; 2 no Mercado SJ
     (at bike6 station-SantaRita)   
     (at bike7 station-SantaRita)
     (at bike8 station-SantaRita) ;; 3 em Santa Rita

     (need-money PacoAlfandega)
     (money-in BancoDoBrasil)
    ) 
    
    (:goal
    (and
     (visited turist-joao PacoAlfandega)
     (visited turist-jose MercadoSJ)
     (visited turist-jose PcaDaRepublica)
     (visited turist-maria IgNossaSraDosPretos)
     (visited turist-maria MercadoSJ)
     )
    )
)