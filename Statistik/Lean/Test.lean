-- Datei: Beispiel.lean

-- Wir arbeiten mit natürlichen Zahlen
theorem add_eq_add_right (a b c : Nat) (h : a = b) : a + c = b + c := by
  -- Wir ersetzen a durch b mithilfe der Annahme h
  rw [h]

-- Ein weiteres einfaches Beispiel:
-- 0 ist das neutrale Element der Addition
theorem zero_add (n : Nat) : 0 + n = n := by
  rfl

-- Kommutativität der Addition (a + b = b + a)
theorem add_comm (a b : Nat) : a + b = b + a := by
  apply Nat.add_comm
