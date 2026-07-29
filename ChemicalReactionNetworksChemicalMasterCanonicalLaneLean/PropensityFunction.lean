import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksChemicalMasterCanonicalLaneLean

structure PropensityFunction where
  speciesIndex : Type u
  stateSpace : speciesIndex → ℕ
  reaction : speciesIndex → ℤ
  rateConstant : ℝ
  propensityFormula : (speciesIndex → ℕ) → ℝ
  massActionKinetics : Prop
  massActionKineticsTerm : massActionKinetics

structure PropensityFunctionEvidence (P : PropensityFunction) where
  massActionKineticsClosed : P.massActionKinetics

def PropensityFunctionClosed (P : PropensityFunction) : Prop :=
  P.massActionKinetics

theorem propensity_function_closed_from_evidence
    (P : PropensityFunction) (E : PropensityFunctionEvidence P) :
    PropensityFunctionClosed P := by
  exact E.massActionKineticsClosed

end ChemicalReactionNetworksChemicalMasterCanonicalLaneLean
end HautevilleHouse
