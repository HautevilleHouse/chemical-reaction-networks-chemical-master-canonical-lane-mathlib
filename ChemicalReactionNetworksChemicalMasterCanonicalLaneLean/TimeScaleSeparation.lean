import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksChemicalMasterCanonicalLaneLean

structure TimeScaleSeparationPackage {M : ChemicalMasterEquationPackage}
    (S : StationaryDistributionPackage M) where
  fastSpeciesIdentification : Prop
  slowVariableFormulation : Prop
  reducedMasterEquation : Prop

structure TimeScaleSeparationEvidence {M : ChemicalMasterEquationPackage}
    {S : StationaryDistributionPackage M}
    (T : TimeScaleSeparationPackage M S) where
  fastSpeciesIdentificationClosed : T.fastSpeciesIdentification
  slowVariableFormulationClosed : T.slowVariableFormulation
  reducedMasterEquationClosed : T.reducedMasterEquation

def TimeScaleSeparationClosed {M : ChemicalMasterEquationPackage}
    {S : StationaryDistributionPackage M}
    (T : TimeScaleSeparationPackage M S) : Prop :=
  T.fastSpeciesIdentification ∧ T.slowVariableFormulation ∧ T.reducedMasterEquation

theorem time_scale_separation_closed_from_evidence
    {M : ChemicalMasterEquationPackage} {S : StationaryDistributionPackage M}
    (T : TimeScaleSeparationPackage M S) (E : TimeScaleSeparationEvidence T) :
    TimeScaleSeparationClosed T :=
  And.intro E.fastSpeciesIdentificationClosed
    (And.intro E.slowVariableFormulationClosed E.reducedMasterEquationClosed)

end ChemicalReactionNetworksChemicalMasterCanonicalLaneLean
end HautevilleHouse