import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChemicalReactionNetworksChemicalMasterCanonicalLaneLean.ChemicalReactionNetworksAdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksChemicalMasterCanonicalLaneLean

def gateClosed (A : ChemicalReactionNetworksAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : ChemicalReactionNetworksAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end ChemicalReactionNetworksChemicalMasterCanonicalLaneLean
end HautevilleHouse