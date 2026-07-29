import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChemicalReactionNetworksChemicalMasterCanonicalLaneLean.ChemicalReactionNetworksAdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksChemicalMasterCanonicalLaneLean

def bridgeClosed (A : ChemicalReactionNetworksAdmissibleClass) : Prop :=
  A.object.masterEquationFormulated ∧ A.object.stationaryDistributionExists

theorem bridge_from_admissible_class (A : ChemicalReactionNetworksAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ChemicalReactionNetworksChemicalMasterCanonicalLaneLean
end HautevilleHouse