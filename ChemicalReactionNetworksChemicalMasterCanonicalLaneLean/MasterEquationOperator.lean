import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksChemicalMasterCanonicalLaneLean

structure MasterEquationOperator where
  stateSpace : Type u
  propensityFunctions : stateSpace → Prop
  generatorMatrix : Prop
  hasTransitionRates : Prop
  transitionRatesSmooth : Prop

structure MasterEquationOperatorEvidence (M : MasterEquationOperator) where
  propensityFunctionsClosed : M.propensityFunctions
  generatorMatrixClosed : M.generatorMatrix
  hasTransitionRatesClosed : M.hasTransitionRates
  transitionRatesSmoothClosed : M.transitionRatesSmooth

def MasterEquationOperatorClosed (M : MasterEquationOperator) : Prop :=
  M.propensityFunctions ∧ M.generatorMatrix ∧ M.hasTransitionRates ∧ M.transitionRatesSmooth

theorem master_equation_operator_closed_from_evidence
    (M : MasterEquationOperator) (E : MasterEquationOperatorEvidence M) :
    MasterEquationOperatorClosed M := by
  exact And.intro E.propensityFunctionsClosed
    (And.intro E.generatorMatrixClosed
      (And.intro E.hasTransitionRatesClosed E.transitionRatesSmoothClosed))

end ChemicalReactionNetworksChemicalMasterCanonicalLaneLean
end HautevilleHouse