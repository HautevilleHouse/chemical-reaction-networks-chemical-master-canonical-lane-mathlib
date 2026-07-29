import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksChemicalMasterCanonicalLaneLean

structure ChemicalReactionNetworkObject where
  reactionNetwork : Type u
  masterEquationFormulated : Prop
  stationaryDistributionExists : Prop
  conclusion : masterEquationFormulated ∧ stationaryDistributionExists

structure ChemicalReactionNetworksAdmissibleClass where
  object : ChemicalReactionNetworkObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def chemicalReactionNetworksAdmittedClosure (A : ChemicalReactionNetworksAdmissibleClass) : Prop :=
  (A.object.masterEquationFormulated ∧ A.object.stationaryDistributionExists) ∧
  (A.endpointSatisfied ∨ A.remainderRecorded)

end ChemicalReactionNetworksChemicalMasterCanonicalLaneLean
end HautevilleHouse