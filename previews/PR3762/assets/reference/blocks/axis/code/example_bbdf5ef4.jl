# This file was generated, do not modify it. # hide
using Makie.LaTeXStrings: @L_str                       # hide
__result = begin                                       # hide
    using CairoMakie
using CairoMakie # hide
CairoMakie.activate!() # hide
f = Figure()

Axis(f[1, 1], titlealign = :left, title = "Left aligned title")
Axis(f[2, 1], titlealign = :center, title = "Center aligned title")
Axis(f[3, 1], titlealign = :right, title = "Right aligned title")

f
end                                                    # hide
sz = size(Makie.parent_scene(__result))                # hide
open(joinpath(@OUTPUT, "example_bbdf5ef4_size.txt"), "w") do io # hide
    print(io, sz[1], " ", sz[2])                       # hide
end                                                    # hide
save(joinpath(@OUTPUT, "example_bbdf5ef4.png"), __result; px_per_unit = 2, pt_per_unit = 0.75, ) # hide
save(joinpath(@OUTPUT, "example_bbdf5ef4.svg"), __result; px_per_unit = 2, pt_per_unit = 0.75, ) # hide
nothing # hide