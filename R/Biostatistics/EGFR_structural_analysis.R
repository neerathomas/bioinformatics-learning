# EGFR Structural Analysis using Bio3D
# PDB ID: 1M17
# EGFR tyrosine kinase domain bound to an inhibitor

library(bio3d)

# Read EGFR protein structure from the Protein Data Bank
Protein <- read.pdb("1M17", verbose = TRUE)

View(Protein)

# Total number of amino acids
total_aa <- length(unique(Protein$atom$resno))

print(paste("Total number of amino acids:", total_aa))


# Amino acid composition
aa <- unique(Protein$atom[, c("resno", "resid")])

comp_aa <- table(aa$resid)
comp_aa

# Percentage composition of amino acids
comp_aa_propensity <- prop.table(comp_aa) * 100
comp_aa_propensity


# Bar plot of amino acid composition
barplot(
  comp_aa,
  col = "blue",
  main = "Amino Acid Composition of EGFR",
  xlab = "Amino Acids",
  ylab = "Frequency",
  las = 2
)


# Mean B-factor of the entire protein
mean_entire_B <- mean(Protein$atom$b)

print(paste("Mean B-factor of entire EGFR structure:", mean_entire_B))


# Mean B-factor of main-chain atoms
mainchain <- Protein$atom$elety %in% c("N", "CA", "C", "O")

Mean_mainchain <- mean(Protein$atom$b[mainchain])

print(paste("Mean B-factor of main-chain atoms:", Mean_mainchain))


# B-factor distribution of main-chain atoms
plot.bio3d(
  Protein$atom$b[mainchain],
  typ = "l",
  lwd = 1.5,
  col = "red",
  ylab = "B-factor",
  xlab = "Atom Index",
  main = "B-factor Distribution of EGFR Main-chain Atoms"
)


# Ramachandran plot
torsion_angle <- torsion.pdb(Protein)

plot(
  torsion_angle$phi,
  torsion_angle$psi,
  xlab = "Phi (φ)",
  ylab = "Psi (ψ)",
  main = "Ramachandran Plot of EGFR",
  col = "black"
)
