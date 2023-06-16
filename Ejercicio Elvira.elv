// Bayesian Network
//   Elvira format 

bnet  "Untitled1" { 

// Network Properties

kindofgraph = "directed";
visualprecision = "0.00";
version = 1.0;
default node states = (presente , ausente);

// Variables 

node Paludismo(finite-states) {
kind-of-node = chance;
type-of-variable = finite-states;
pos_x =473;
pos_y =190;
relevance = 7.0;
purpose = "";
num-states = 2;
states = ("si" "no");
}

node Gota_Gruesa(finite-states) {
kind-of-node = chance;
type-of-variable = finite-states;
pos_x =782;
pos_y =195;
relevance = 7.0;
purpose = "";
num-states = 2;
states = ("presente" "ausente");
}

// Links of the associated graph:

link Paludismo Gota_Gruesa;

//Network Relationships: 

relation Paludismo { 
comment = "";
kind-of-relation = potential;
deterministic=false;
values= table (0.003 0.997 );
}

relation Gota_Gruesa Paludismo { 
comment = "";
kind-of-relation = potential;
deterministic=false;
values= table (0.992 6.0E-4 0.008 0.9994 );
}

}
