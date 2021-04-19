struct Parameter
    expression::AbstractFloat
    value::AbstractFloat
    name::String

    function Parameter(; 
        expression::AbstractFloat=0.0, 
        value::AbstractFloat=0.0,
        name::String="")

        return new(expression, value, name)
    end
end