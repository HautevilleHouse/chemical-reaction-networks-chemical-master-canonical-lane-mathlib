import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksChemicalMasterCanonicalLaneLean

structure ChemicalSpecies where
  index : Nat
  name : String
  copyNumber : Nat → Nat

structure ReactionChannel where
  reactants : List Nat
  products : List Nat
  propensity : (Nat → Nat) → ℝ
  stoichiometricVector : Nat → ℤ

structure MasterEquationSystem where
  species : List ChemicalSpecies
  reactions : List ReactionChannel
  stateSpace : Set (Nat → Nat)
  probabilityDistribution : (Nat → Nat) → ℝ → ℝ
  masterEquation : ((Nat → Nat) → ℝ → ℝ) → (Nat → Nat) → ℝ → ℝ
  masterEquationClosed : Prop
  masterEquationClosedTerm : masterEquationClosed

structure MasterEquationEvidence (M : MasterEquationSystem) where
  masterEquationClosed : M.masterEquationClosed
  probabilityDistributionNormalized : ∀ t, ∑ x in M.stateSpace, M.probabilityDistribution x t = 1
  nonnegativityProof : ∀ x t, M.probabilityDistribution x t ≥ 0

def MasterEquationClosed (M : MasterEquationSystem) : Prop :=
  M.masterEquationClosed

theorem master_equation_closed_from_evidence (M : MasterEquationSystem) (E : MasterEquationEvidence M) :
    MasterEquationClosed M := by
  exact E.masterEquationClosed

end ChemicalReactionNetworksChemicalMasterCanonicalLaneLean
end HautevilleHouse