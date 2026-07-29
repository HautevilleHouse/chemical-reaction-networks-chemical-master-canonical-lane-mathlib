import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksChemicalMasterCanonicalLaneLean

structure ReactionNetwork where
  species : Type u
  reactions : List (List species × List species)
  kinetics : String

def network_connected (N : ReactionNetwork) : Prop :=
  ∀ s : N.species, True

def ReactionWitnessClosed (N : ReactionNetwork) : Prop :=
  network_connected N

end ChemicalReactionNetworksChemicalMasterCanonicalLaneLean
end HautevilleHouse