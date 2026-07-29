import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksChemicalMasterCanonicalLaneLean

structure StochasticSimulationPackage where
  algorithm : String
  trajectory : ℕ → List ℕ
  convergence : Prop
  errorBound : Prop

structure SimulationEvidence (S : StochasticSimulationPackage) where
  convergenceClosed : S.convergence
  errorBoundClosed : S.errorBound

def SimulationClosed (S : StochasticSimulationPackage) : Prop :=
  S.convergence ∧ S.errorBound

theorem simulation_closed_from_evidence (S : StochasticSimulationPackage) (E : SimulationEvidence S) : SimulationClosed S := by
  exact And.intro E.convergenceClosed E.errorBoundClosed

end ChemicalReactionNetworksChemicalMasterCanonicalLaneLean
end HautevilleHouse