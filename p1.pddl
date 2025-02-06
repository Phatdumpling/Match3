(define (problem match1)
  (:domain Match)

  ; Come up with your own problem instance (see assignment for details)
  ; NOTE: You _may_ use new objects for this problem only.

  ; Naming convention:
  ; - loc-{i}-{j} refers to the location at the i'th column and j'th row (starting in top left corner)
  ; - c{i}{j}{h}{k} refers to the corridor connecting loc-{i}-{j} and loc-{h}-{k}
  (:objects
    tile-a-1 tile-a-2 tile-a-3 tile-b-1 tile-b-2 tile-b-3 tile-c-1 tile-c-2 tile-c-3 - tile
  )

; Problem represents https://imgur.com/a/FhWdDbe
  (:init

    (horizontal tile-a-1 tile-a-2)
    ;(horizontal tile-a-2 tile-a-1)

    (horizontal tile-a-2 tile-a-3)
    ;(horizontal tile-a-3 tile-a-2)

    (horizontal tile-b-1 tile-b-2)
    ;(horizontal tile-b-2 tile-b-1)

    (horizontal tile-b-2 tile-b-3)
    ;(horizontal tile-b-3 tile-b-2)

    (horizontal tile-c-1 tile-c-2)
    ;(horizontal tile-c-2 tile-c-1)

    (horizontal tile-c-2 tile-c-3)
    ;(horizontal tile-c-3 tile-c-2)

    (vertical tile-a-1 tile-b-1)
    ;(vertical tile-b-1 tile-a-1)

    (vertical tile-b-1 tile-c-1)
    ;(vertical tile-c-1 tile-b-1)

    (vertical tile-a-2 tile-b-2)
    ;(vertical tile-b-2 tile-a-2)

    (vertical tile-b-2 tile-c-2)
    ;(vertical tile-c-2 tile-b-2)

    (vertical tile-a-3 tile-b-3)
    ;(vertical tile-b-3 tile-a-3)

    (vertical tile-b-3 tile-c-3)
    ;(vertical tile-c-3 tile-b-3)


    (tileval tile-a-1 grif)
    (tileval tile-a-2 huff)
    (tileval tile-a-3 grif)

    (tileval tile-b-1 huff)
    (tileval tile-b-2 huff)
    (tileval tile-b-3 rav)

    (tileval tile-c-1 rav)
    (tileval tile-c-2 rav)
    (tileval tile-c-3 grif)

    ;(not (empty tile-a-1))
    ;(not (empty tile-a-2))
    ;(not (empty tile-a-3))

    ;(not (empty tile-b-1))
    ;(not (empty tile-b-2))
    ;(not (empty tile-b-3))

    ;(not (empty tile-c-1))
    ;(not (empty tile-c-2))
    ;(not (empty tile-c-3))

  )
  
  (:goal
    (and
      ; tile-a-1 tile-a-2 tile-a-3 tile-b-1 tile-b-2 tile-b-3 tile-c-1 tile-c-2 tile-c-3 - tile
      (empty tile-a-1)
      (empty tile-a-2)
      (empty tile-a-3)

      (empty tile-b-1)
      (empty tile-b-2)
      (empty tile-b-3)

      (empty tile-c-1)
      (empty tile-c-2)
      (empty tile-c-3)

      
    )
  )

)
