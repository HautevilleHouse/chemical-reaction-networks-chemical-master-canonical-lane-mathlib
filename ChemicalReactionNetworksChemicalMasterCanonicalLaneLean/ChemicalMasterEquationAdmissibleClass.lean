import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksChemicalMasterCanonicalLaneLean

structure ChemicalMasterAdmittedObject where
  chemicalSpeciesList : List String
  reactionChannels : Nat
  stateSpaceSize : Nat
  masterEquationSatisfied : Prop
  conclusion : masterEquationSatisfied

def ChemicalMasterWitnessClosed (O : ChemicalMasterAdmittedObject) : Prop :=
  O.masterEquationSatisfied

end ChemicalReactionNetworksChemicalMasterCanonicalLaneLean
end HautevilleHouse