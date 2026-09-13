getwd()

library(bio3d)

Protein <- read.pdb("1SMD", verbose = TRUE)
View(Protein)

# Total number of amino acids
total_aa <- length(unique(Protein$atom$resno))
print(paste("Total number of amino acids:", total_aa))

# Amino acid composition
aa <- unique(Protein$atom[, c("resno", "resid")])
comp_aa <- table(aa$resid)
comp_aa

# Amino acid composition percentage
comp_aa_propensity <- prop.table(comp_aa) * 100
comp_aa_propensity

# Bar plot of amino acid composition
barplot(comp_aa,
        col = "black",
        main = "Amino Acid Composition of Protein",
        xlab = "Amino acids",
        ylab = "Frequency",
        las = 2)

# Mean B-factor of entire protein
mean_entire_B <- mean(Protein$atom$b)
mean_entire_B

# Mean B-factor of main-chain atoms
mainchain <- Protein$atom$elety %in% c("N", "CA", "C", "O")
Mean_mainchain <- mean(Protein$atom$b[mainchain])
Mean_mainchain

# B-factor distribution of main-chain atoms
plot.bio3d(Protein$atom$b[mainchain],
           typ = "l",
           lwd = 1.5,
           col = "red",
           ylab = "B-factor",
           xlab = "Atom index",
           main = "B-factor Distribution of Main Chain Atoms")

# Ramachandran plot
torsion_angle <- torsion.pdb(Protein)

plot(torsion_angle$phi,
     torsion_angle$psi,
     xlab = "Phi",
     ylab = "Psi",
     main = "Ramachandran Plot",
     col = "green")
