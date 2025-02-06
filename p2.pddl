(define (problem match2)
  (:domain Match)
  (:objects
    tile-a-1 tile-a-2 tile-a-3 tile-b-1 tile-b-2 tile-b-3 tile-c-1 tile-c-2 tile-c-3 tile-d-1 tile-d-2 tile-d-3 - tile
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

    (horizontal tile-d-1 tile-d-2)
    ;(horizontal tile-d-2 tile-d-1)

    (horizontal tile-d-2 tile-d-3)
    ;(horizontal tile-d-3 tile-d-2)

    (vertical tile-a-1 tile-b-1)
    ;(vertical tile-b-1 tile-a-1)

    (vertical tile-b-1 tile-c-1)
    ;(vertical tile-c-1 tile-b-1)

    (vertical tile-d-1 tile-c-1)
    ;(vertical tile-c-1 tile-d-1)

    (vertical tile-a-2 tile-b-2)
    ;(vertical tile-b-2 tile-a-2)

    (vertical tile-b-2 tile-c-2)
    ;(vertical tile-c-2 tile-b-2)
    
    (vertical tile-d-2 tile-c-2)
    ;(vertical tile-c-2 tile-d-2)

    (vertical tile-a-3 tile-b-3)
    ;(vertical tile-b-3 tile-a-3)

    (vertical tile-b-3 tile-c-3)
    ;(vertical tile-c-3 tile-b-3)

    (vertical tile-d-3 tile-c-3)
    ;(vertical tile-c-3 tile-d-3)


    (tileval tile-a-1 grif)
    (tileval tile-a-2 huff)
    (tileval tile-a-3 grif)

    (tileval tile-b-1 huff)
    (tileval tile-b-2 huff)
    (tileval tile-b-3 sly)

    (tileval tile-c-1 sly)
    (tileval tile-c-2 sly)
    (tileval tile-c-3 grif)

    (tileval tile-d-1 rav)
    (tileval tile-d-2 rav)
    (tileval tile-d-3 rav)
  )
  
  (:goal
    (and
      ; tile-a-1 tile-a-2 tile-a-3 tile-b-1 tile-b-2 tile-b-3 tile-c-1 tile-c-2 tile-c-3 tile-d-1 tile-d-2 tile-d-3 - tile
      (empty tile-a-1)
      (empty tile-a-2)
      (empty tile-a-3)

      (empty tile-b-1)
      (empty tile-b-2)
      (empty tile-b-3)

      (empty tile-c-1)
      (empty tile-c-2)
      (empty tile-c-3)

      (empty tile-d-1)
      (empty tile-d-2)
      (empty tile-d-3)
    )
  )
)