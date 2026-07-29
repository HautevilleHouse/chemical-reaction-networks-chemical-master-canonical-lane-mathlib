import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChemicalReactionNetworksChemicalMasterCanonicalLaneLean.ChemicalMasterEquation

namespace HautevilleHouse
namespace ChemicalReactionNetworksChemicalMasterCanonicalLaneLean

structure StationaryDistributionPackage {M : MasterEquationOperator}
    (C : ChemicalMasterEquationPackage M) where
  stationaryMeasure : Prop
  detailedBalanceCondition : Prop
  ergodicity : Prop
  uniqueStationaryDistribution : Prop

structure StationaryDistributionEvidence {M : MasterEquationOperator}
    {C : ChemicalMasterEquationPackage M} (S : StationaryDistributionPackage C) where
  stationaryMeasureClosed : S.stationaryMeasure
  detailedBalanceConditionClosed : S.detailedBalanceCondition
  ergodicityClosed : S.ergodicity
  uniqueStationaryDistributionClosed : S.uniqueStationaryDistribution

def StationaryDistributionClosed {M : MasterEquationOperator}
    {C : ChemicalMasterEquationPackage M} (S : StationaryDistributionPackage C) : Prop :=
  S.stationaryMeasure ∧ S.detailedBalanceCondition ∧ S.ergodicity ∧ S.uniqueStationaryDistribution

theorem stationary_distribution_closed_from_evidence
    {M : MasterEquationOperator} {C : ChemicalMasterEquationPackage M}
    (S : StationaryDistributionPackage C) (E : StationaryDistributionEvidence S) :
    StationaryDistributionClosed S := by
  exact And.intro E.stationaryMeasureClosed
    (And.intro E.detailedBalanceConditionClosed
      (And.intro E.ergodicityClosed E.uniqueStationaryDistributionClosed))

end ChemicalReactionNetworksChemicalMasterCanonicalLaneLean
end HautevilleHouse