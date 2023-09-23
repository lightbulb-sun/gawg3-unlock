UNLOCKED_GAMES          equ     $c7ca
ALL_GAMES_UNLOCKED      equ     $1f

SECTION "unlock_all_games", ROMX[$4bd5], BANK[1]
        call    my_code

SECTION "free_space", ROMX[$5000], BANK[1]
my_code:
        ; replace original instruction
        ld      [$1fff], a

        ld      a, ALL_GAMES_UNLOCKED
        ld      [UNLOCKED_GAMES], a
        ret
