struct Species
    constant::Bool
    boundary_condition::Bool
    allow_negative_populations::Bool

    initial_value::Int
    switch_min::AbstractFloat
    switch_tol::AbstractFloat

    name::String
    mode::String
end

function Species(;
    constant::Bool=false, 
    boundary_condition::Bool=false, 
    allow_negative_populations::Bool=false,
    initial_value::Int=0,
    switch_min::AbstractFloat=0.0, 
    switch_tol::AbstractFloat=0.0, 
    name::String="", 
    mode::String=""
    ) 

    return Species(
        constant,
        boundary_condition,
        allow_negative_populations,
        initial_value,
        switch_min,
        switch_tol,
        name,
        mode
    )
end