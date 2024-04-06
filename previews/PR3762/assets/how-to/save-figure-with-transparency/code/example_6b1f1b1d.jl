# This file was generated, do not modify it. # hide
using Makie.LaTeXStrings: @L_str                       # hide
__result = begin                                       # hide
    using CairoMakie
CairoMakie.activate!() # hide

f = Figure(backgroundcolor = (:blue, 0.4))
Axis(f[1, 1], backgroundcolor = (:tomato, 0.5))
f
end                                                    # hide
sz = size(Makie.parent_scene(__result))                # hide
open(joinpath(@OUTPUT, "example_6b1f1b1d_size.txt"), "w") do io # hide
    print(io, sz[1], " ", sz[2])                       # hide
end                                                    # hide
save(joinpath(@OUTPUT, "example_6b1f1b1d.png"), __result; px_per_unit = 2, pt_per_unit = 0.75, ) # hide
save(joinpath(@OUTPUT, "example_6b1f1b1d.svg"), __result; px_per_unit = 2, pt_per_unit = 0.75, ) # hide
nothing # hide