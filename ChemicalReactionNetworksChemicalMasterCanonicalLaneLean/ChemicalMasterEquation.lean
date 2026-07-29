import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChemicalReactionNetworksChemicalMasterCanonicalLaneLean.MasterEquationOperator

namespace HautevilleHouse
namespace ChemicalReactionNetworksChemicalMasterCanonicalLaneLean

structure ChemicalMasterEquationPackage (M : MasterEquationOperator) where
  probabilityDistribution : Type u
  timeParameter : Type v
  masterEquationFormulation : Prop
  initialDistribution : Prop
  solutionExistence : Prop

structure ChemicalMasterEquationEvidence {M : MasterEquationOperator}
    (C : ChemicalMasterEquationPackage M) where
  masterEquationFormulationClosed : C.masterEquationFormulation
  initialDistributionClosed : C.initialDistribution
  solutionExistenceClosed : C.solutionExistence

def ChemicalMasterEquationClosed {M : MasterEquationOperator}
    (C : ChemicalMasterEquationPackage M) : Prop :=
  C.masterEquationFormulation ∧ C.initialDistribution ∧ C.solutionExistence

theorem chemical_master_equation_closed_from_evidence
    {M : MasterEquationOperator} (C : ChemicalMasterEquationPackage M)
    (E : ChemicalMasterEquationEvidence C) : ChemicalMasterEquationClosed C := by
  exact And.intro E.masterEquationFormulationClosed
    (And.intro E.initialDistributionClosed E.solutionExistenceClosed)

end ChemicalReactionNetworksChemicalMasterCanonicalLaneLean
end HautevilleHouse