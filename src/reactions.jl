struct Reaction
    massaction::Bool
    name::String
    annotation::String
    propensity_function::String

    rate::Parameter
    timespan::Vector{Int}
    reactants::Vector{Tuple{Species, Int}}
    products::Vector{Tuple{Species, Int}}

    function Reaction(;
        massaction::Bool=false,
        name::String="",
        annotation::String="",
        propensity_function::String="",
        rate::Parameter=Parameter(),
        timespan::Vector{Int}=Vector{Int}(),
        reactants::Vector{Tuple{Species, Int}}=Vector{Tuple{Species, Int}}(),
        products::Vector{Tuple{Species, Int}}=Vector{Tuple{Species, Int}}())

        return new(
            massaction,
            name,
            annotation,
            propensity_function,
            rate,
            timespan,
            reactants,
            products,
        )
    end
end