# Zusammenfassung Stochastik

--- 
30.03.2026
--- 

## Intro

Kausalität:
- Kausalität ist die Beziehung zwischen Ursache und Wirkung. Sie betrifft die Abfolge von Ereignissen und Zuständen, die aufeinander bezogen wird. Demnach ist A die Ursache für die Wirkung B, wenn B von A herbeigeführt wird.

Scheinkorrelation:
- Zwei größen X und Y können korreliert sein, weil eine dritte Variable Z (Cofounder) beide beeinflusst:

$$Z \rightarrow X $$
$$Z \rightarrow Y $$

- aber

$$Z \nrightarrow Y $$

Mengenlehre:
- Grundobjekte: Mengen; Syntax: Formeln der Prädikatenlogik mit $\in$ ; Urteile: $x \in A$, $A=B$; Axiome: Extensionalität, Paarmenge, Vereinigung, Potenzmenge, Separation,
Ersetzung, Unendlichkeit; Regeln: Modus Ponens, Generalisierung, Gleichheitsregeln;
Semantik: Modelle der Mengenlehre 

Kategorientheorie:
- Grundobjekte: Objekte, Morphismen; Syntax: Pfeile, Komposition, Identitäten;
Urteile: $f: A \rightarrow B , g \circ f = h$ Axiome: Assoziativität, Identitätsgesetze; Produkte,
Exponentialobjekte, Topoi, . . . ; Regeln: Komposition, Funktorialität, universelle
Eigenschaften; Semantik: konkrete Kategorien als Modelle

Depentend Type Theorie:
- Typen, Terme, Kontexte; Syntax: A type, a : A, Π-, Σ-, Id-Typen;
Urteile: Γ ⊢A type, Γ ⊢a : A; Axiome: Universenaxiom, (Univalenzaxiom); Regeln:
Einführungs-, Eliminations-, Berechnungs- und Gleichheitsregeln; Semantik:
Kontextkategorien, Homotopie-Modelle

### Curry-Howard-Isomorphismus

Eine Bezoehung zwischen Logik und Typentheorie 

Logische Aussagen entsprechen Typen, Beweise entsprechen Programme 
- Konjunktion (∧) als Produkt-Typ
- Disjunktion (∨) als Summen-Typ
- Implikation (⇒) als Funktionstyp
- Allquantor (∀) als Produkttyp
- Existenzquantor (∃) als Summentyp

```
Definition: 

Die Konjunktion A ∧B entspricht einem Produkttyp A × B.
Ein Beweis für A ∧B ist ein Paar (a, b), wobei a ein Beweis für A
und b ein Beweis für B ist.
```

```
Logik vs. Types 

A ∧ B ↔ A × B
```

```
Definition:

Die Disjunktion A ∨ B entspricht einem Summentyp A + B.
Ein Beweis für A ∨ B ist entweder ein Beweis für A oder ein Beweis
für B.
```

```
Logik vs. Types

A ∨ B ↔ A + B
```

```
Definition:

Die Implikation A ⇒ B entspricht einem Funktionstyp A → B.
Ein Beweis für A ⇒ B ist eine Funktion, die aus einem Beweis für
A einen Beweis für B konstruiert.
```

```
Logik vs. Types

A ⇒ B ↔ A → B
```

```
Definition:

Der Allquantor ∀x ∈A. P(x) entspricht einem Produkttyp
```
$$\prod  x:A P(x)$$
```
Ein Beweis für ∀x ∈A. P(x) ist eine Funktion, die jedem x ∈A
einen Beweis für P(x) zuordnet.
```
Logik vs. Types
$$\forall x \in A.P(x) \leftrightarrow \prod_{x:A} P(x)$$

```
Definition:

Der Existenzquantor ∃x ∈A. P(x) entspricht einem Summentyp
```
$$\sum x:A P(x)$$

```
Ein Beweis für ∃x ∈A. P(x) ist ein Paar (x, Beweis für P(x)),
wobei x ∈ A und P(x) gilt.
```

Logik vs. Types

$$\exists x \in A.P(x) \leftrightarrow \sum_{x:A} P(x)$$

--- 