import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksChemicalMasterCanonicalLaneLean

structure MultiScaleAnalysisPackage {C : ChemicalMasterPackage} where
  timescales : List ℝ
  slowManifold : Set (C.species → Nat)
  fastVariables : (C.species → Nat) → ℝ
  averagingPrinciple : ∀ ε > 0, ∃ t0, ∀ t > t0, approximation holds

structure MultiScaleAnalysisEvidence {C : ChemicalMasterPackage} (M : MultiScaleAnalysisPackage C) where
  timescalesSeparation : sorted ascending
  slowManifoldInvariant : under dynamics stays in slowManifold with high probability

def MultiScaleAnalysisClosed {C : ChemicalMasterPackage} (M : MultiScaleAnalysisPackage C) : Prop :=
  M.averagingPrinciple ∧ M.slowManifold ≠ ∅

theorem multi_scale_analysis_closed_from_evidence {C : ChemicalMasterPackage} (M : MultiScaleAnalysisPackage C) (E : MultiScaleAnalysisEvidence M) : MultiScaleAnalysisClosed M :=
  And.intro M.averagingPrinciple (by
    have : M.slowManifold ≠ ∅ := by
      intro h
      have := E.slowManifoldInvariant
      exact this h
    exact this)

end ChemicalReactionNetworksChemicalMasterCanonicalLaneLean
end HautevilleHouse