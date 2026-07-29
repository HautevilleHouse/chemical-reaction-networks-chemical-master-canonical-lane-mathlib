import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksChemicalMasterCanonicalLaneLean

structure ChemicalReactionNetwork where
  species : Type u
  reactions : List (species → ℤ)
  rateConstants : species → ℝ
  graphStructure : Prop
  reversible : Prop
  graphStructureTerm : graphStructure
  reversibleTerm : reversible

structure ChemicalReactionNetworkEvidence (N : ChemicalReactionNetwork) where
  graphStructureClosed : N.graphStructure
  reversibleClosed : N.reversible

def ChemicalReactionNetworkClosed (N : ChemicalReactionNetwork) : Prop :=
  N.graphStructure ∧ N.reversible

theorem chemical_reaction_network_closed_from_evidence
    (N : ChemicalReactionNetwork) (E : ChemicalReactionNetworkEvidence N) :
    ChemicalReactionNetworkClosed N := by
  exact And.intro E.graphStructureClosed E.reversibleClosed

end ChemicalReactionNetworksChemicalMasterCanonicalLaneLean
end HautevilleHouse
