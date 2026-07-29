import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChemicalReactionNetworksChemicalMasterCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.ChemicalReactionNetworksChemicalMasterCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ChemicalReactionNetworksChemicalMasterCanonicalLaneLean

def ConstrainedChemicalMasterClosure (A : ChemicalReactionNetworksAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_chemical_master_endgame (A : ChemicalReactionNetworksAdmissibleClass) :
    ConstrainedChemicalMasterClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ChemicalReactionNetworksChemicalMasterCanonicalLaneLean
end HautevilleHouse