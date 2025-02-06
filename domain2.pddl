(define (domain Match)

    (:requirements
        :typing
        :negative-preconditions
        :conditional-effects
    )

    ; Do not modify the types
    (:types
        tile tileType
    )

    ; Do not modify the constants
    (:constants
        grif huff sly rav - tileType
    )

    ; You may introduce whatever predicates you would like to use
    ; https://editor.planning.domains/#edit_session=oUO2n1CajFE1Ems
    (:predicates

        (horizontal ?tile1 ?tile2 - tile)
        (vertical ?tile1 ?tile2 - tile)
        (empty ?tile1 - tile)
        (tileval ?tile1 - tile ?type - tileType)
    )

    (:action swap

        :parameters (?tile1 ?tile2 - tile ?type1 ?type2 - tileType)

        :precondition (and

            ;(or (horizontal ?tile1 ?tile2) (vertical ?tile1 ?tile2)) ; this
            (tileval ?tile1 ?type1)
            (tileval ?tile2 ?type2)

            (not (= ?type1 ?type2))
            (not (= ?tile1 ?tile2))

            (not(empty ?tile1))
            (not(empty ?tile2))
        )

        :effect (and
            (tileval ?tile1 ?type2)
            (tileval ?tile2 ?type1)

            (not(tileval ?tile1 ?type1))
            (not(tileval ?tile2 ?type2))

        (when (and (tileval ?tile2 sly) (tileval ?tile1 grif))
              (and (not (tileval ?tile1 sly)) (empty ?tile1)))

        (when (and (tileval ?tile1 sly) (tileval ?tile2 grif))
              (and (not (tileval ?tile2 sly)) (empty ?tile2)))
        )
    )

    (:action remove

        :parameters (?tile1 ?tile2 ?tile3 - tile ?type1 ?type2 ?type3 - tileType)

        :precondition (and

            (or (and (horizontal ?tile1 ?tile2) (horizontal ?tile2 ?tile3)) (and (vertical ?tile1 ?tile2) (vertical ?tile2 ?tile3)))
            (tileval ?tile1 ?type1)
            (tileval ?tile2 ?type2)
            (tileval ?tile3 ?type3)

            ;(not (= ?tile1 ?tile2))
            ;(not (= ?tile2 ?tile3))
            ;(not (= ?tile3 ?tile1))

            (= ?type1 ?type2)
            (= ?type2 ?type3)

            (not(empty ?tile1))
            (not(empty ?tile2))
            (not(empty ?tile3))
        )

        :effect (and
            (empty ?tile1)
            (empty ?tile2)
            (empty ?tile3)

            (not(tileval ?tile1 ?type1))
            (not(tileval ?tile2 ?type2))
            (not(tileval ?tile3 ?type3))
        )
    )
)
