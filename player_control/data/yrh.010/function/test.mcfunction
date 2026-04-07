execute positioned 0.0 0.0 0.0 rotated ~45 0 positioned ^ ^ ^-0.5 align xz facing -0.5 0.0 -0.5 rotated ~-45 0 \
    positioned as @s run particle end_rod ^ ^1.5 ^0.45

execute positioned 0.0 0.0 0.0 rotated ~45 0 positioned ^ ^ ^-0.5 align xz facing -0.5 0.0 -0.5 rotated ~-45 0 \
    positioned as @s run particle end_rod ^ ^2.0 ^0.45

execute positioned 0.0 0.0 0.0 rotated ~45 0 positioned ^ ^ ^-0.5 align xz facing -0.5 0.0 -0.5 rotated ~-45 0 \
    positioned as @s \
    unless block ^ ^1.0 ^0.45 #yrh.010:thru if block ^ ^2.0 ^0.45 #yrh.010:thru \
    run say test