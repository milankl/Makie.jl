# This file was generated, do not modify it. # hide
using Makie.LaTeXStrings: @L_str                       # hide
__result = begin                                       # hide
    fig = Figure(size = (800*2, 600*5))
colors = [Makie.wong_colors(); Makie.wong_colors()]

category_labels, data_array = mockup_categories_and_data_array(3)
rainclouds!(
    Axis(fig[1, 1], title = "Left Side, with Box Plot"),
    category_labels, data_array;
    side = :left,
    plot_boxplots = true,
    color = colors[indexin(category_labels, unique(category_labels))])

rainclouds!(
    Axis(fig[2, 1], title = "Left Side, without Box Plot"),
    category_labels, data_array;
    side = :left,
    plot_boxplots = false,
    color = colors[indexin(category_labels, unique(category_labels))])

rainclouds!(
    Axis(fig[1, 2], title = "Right Side, with Box Plot"),
    category_labels, data_array;
    side = :right,
    plot_boxplots = true,
    color = colors[indexin(category_labels, unique(category_labels))])

rainclouds!(
    Axis(fig[2, 2], title = "Right Side, without Box Plot"),
    category_labels, data_array;
    side = :right,
    plot_boxplots = false,
    color = colors[indexin(category_labels, unique(category_labels))])

# Plots wiht more categories
# dist_between_categories (0.6, 1.0)
# with and without clouds

category_labels, data_array = mockup_categories_and_data_array(12)
rainclouds!(
    Axis(fig[3, 1:2], title = "More categories. Default spacing."),
    category_labels, data_array;
    plot_boxplots = true,
    gap = 1.0,
    color = colors[indexin(category_labels, unique(category_labels))])

rainclouds!(
    Axis(fig[4, 1:2], title = "More categories. Adjust space. (smaller cloud widths and smaller category distances)"),
    category_labels, data_array;
    plot_boxplots = true,
    cloud_width = 0.3,
    gap = 0.5,
    color = colors[indexin(category_labels, unique(category_labels))])

rainclouds!(
    Axis(fig[5, 1:2], title = "More categories. Adjust space. No clouds."),
    category_labels, data_array;
    plot_boxplots = true,
    clouds = nothing,
    gap = 0.5,
    color = colors[indexin(category_labels, unique(category_labels))])

supertitle = Label(fig[0, :], "Cloud Plot Testing (Scatter, Violin, Boxplot)", fontsize=30)
fig
end                                                    # hide
sz = size(Makie.parent_scene(__result))                # hide
open(joinpath(@OUTPUT, "example_cb772081_size.txt"), "w") do io # hide
    print(io, sz[1], " ", sz[2])                       # hide
end                                                    # hide
save(joinpath(@OUTPUT, "example_cb772081.png"), __result; px_per_unit = 2, pt_per_unit = 0.75, ) # hide
 # hide
nothing # hide