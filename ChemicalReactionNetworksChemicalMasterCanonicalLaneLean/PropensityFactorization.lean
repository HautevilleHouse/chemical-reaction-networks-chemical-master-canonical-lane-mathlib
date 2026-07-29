import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksChemicalMasterCanonicalLaneLean

structure PropensityFactorizationPackage where
  reactionNetwork : Type u
  speciesCount : Nat
  propensityFactorization : Prop
  stoichiometricMatrix : Prop
  factorizedForm : Prop

structure PropensityFactorizationEvidence (P : PropensityFactorizationPackage) where
  propensityFactorizationClosed : P.propensityFactorization
  stoichiometricMatrixClosed : P.stoichiometricMatrix
  factorizedFormClosed : P.factorizedForm

def PropensityFactorizationClosed (P : PropensityFactorizationPackage) : Prop :=
  P.propensityFactorization ∧ P.stoichiometricMatrix ∧ P.factorizedForm

theorem propensity_factorization_closed_from_evidence
    (P : PropensityFactorizationPackage) (E : PropensityFactorizationEvidence P) :
    PropensityFactorizationClosed P := by
  exact And.intro E.propensityFactorizationClosed
    (And.intro E.stoichiometricMatrixClosed E.factorizedFormClosed)

end ChemicalReactionNetworksChemicalMasterCanonicalLaneLean
end HautevilleHouse