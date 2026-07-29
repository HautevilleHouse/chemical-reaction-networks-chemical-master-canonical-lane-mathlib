import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksChemicalMasterCanonicalLaneLean

structure FluctuationDissipationPackage where
  fluctuationRelation : Prop
  dissipationRate : Prop
  greenKuboFormula : Prop

structure FluctuationEvidence (F : FluctuationDissipationPackage) where
  fluctuationRelationClosed : F.fluctuationRelation
  dissipationRateClosed : F.dissipationRate
  greenKuboFormulaClosed : F.greenKuboFormula

def FluctuationClosed (F : FluctuationDissipationPackage) : Prop :=
  F.fluctuationRelation ∧ F.dissipationRate ∧ F.greenKuboFormula

theorem fluctuation_closed_from_evidence (F : FluctuationDissipationPackage) (E : FluctuationEvidence F) : FluctuationClosed F := by
  exact And.intro E.fluctuationRelationClosed (And.intro E.dissipationRateClosed E.greenKuboFormulaClosed)

end ChemicalReactionNetworksChemicalMasterCanonicalLaneLean
end HautevilleHouse