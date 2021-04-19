# using FromFile
# @from "Parameters.jl" import Parameters: Parameter
# @from "Species.jl" import Species: Specie

struct Model 
    population::Bool
    volume::AbstractFloat
    name::String
    annotation::String
    
    timespan::Vector{Int}
    parameters::Vector{Parameter}
    species::Vector{Species}
    reactions::Vector{Reaction}

    function Model(; 
        population::Bool=true, 
        volume::AbstractFloat=1.0,
        name::String="", 
        annotation::String="", 
        timespan::AbstractRange{Int}=1:100,
        parameters::Vector{Parameter}=Vector{Parameter}(),
        species::Vector{Species}=Vector{Species}(),
        reactions::Vector{Reaction}=Vector{Reaction}()
        )

        return new(
            population, 
            volume, 
            name, 
            annotation, 
            Vector{Int}(timespan),
            parameters,
            species,
            reactions
        )
    end
end


function add!(model::Model, parameter::Parameter)
    push!(model.parameters, parameter)
end

function add!(model::Model, specie::Species)
    push!(model.specie, specie)
end

function run(model::Model)
    println("The model would run if this was implemented.")
end