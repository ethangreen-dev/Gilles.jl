module ODESolver

import ...Gilles:
    Model

function run(model::Model)
    println("Starting model: $(model.name) with ODESolver simulation.")
end

end