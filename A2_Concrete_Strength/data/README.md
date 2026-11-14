# Concrete Compressive Strength Dataset

## Provenance & Overview
- **Dataset Title:** Concrete Compressive Strength
- **Source:** UCI Machine Learning Repository (ID: 165)
- **Creator:** Prof. I-Cheng Yeh, Department of Civil Engineering, Chung-Hua University
- **Citation:** Yeh, I-C. (1998). "Modeling of strength of high-performance concrete using artificial neural networks." *Cement and Concrete Research*, 28(12), 1797-1808.
- **License:** CC BY 4.0

## Dataset Attributes
- **Instances:** 1,030 mix designs
- **Input Dimensions (8 raw continuous features):**
  1. `cement`: kg in a $m^3$ mixture
  2. `blast_furnace_slag`: kg in a $m^3$ mixture
  3. `fly_ash`: kg in a $m^3$ mixture
  4. `water`: kg in a $m^3$ mixture
  5. `superplasticizer`: kg in a $m^3$ mixture
  6. `coarse_aggregate`: kg in a $m^3$ mixture
  7. `fine_aggregate`: kg in a $m^3$ mixture
  8. `age`: Curing time in days (1 to 365 days)
- **Target Variable:** `compressive_strength` (Continuous, MPa, range 2.3 to 82.6 MPa)

## Engineered Features
- `water_cement_ratio`: $\frac{\text{water}}{\text{cement}}$ (Abrams' law formulation)
- `log_age`: $\log(\text{age} + 1)$ (Logarithmic maturation curve)
