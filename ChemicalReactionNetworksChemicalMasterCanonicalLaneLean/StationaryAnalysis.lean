import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksChemicalMasterCanonicalLaneLean

structure StationaryAnalysisPackage where
  stationaryDistribution : Type u
  detailedBalance : Prop
  ergodicity : Prop
  uniqueness : Prop

structure StationaryEvidence (S : StationaryAnalysisPackage) where
  detailedBalanceClosed : S.detailedBalance
  ergodicityClosed : S.ergodicity
  uniquenessClosed : S.uniqueness

def StationaryClosed (S : StationaryAnalysisPackage) : Prop :=
  S.detailedBalance ∧ S.ergodicity ∧ S.uniqueness

theorem stationary_closed_from_evidence (S : StationaryAnalysisPackage) (E : StationaryEvidence S) : StationaryClosed S := by
  exact And.intro E.detailedBalanceClosed (And.intro E.ergodicityClosed E.uniquenessClosed)

end ChemicalReactionNetworksChemicalMasterCanonicalLaneLean
end HautevilleHouse