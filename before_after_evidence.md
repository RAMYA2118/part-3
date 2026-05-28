# Before and After Evidence

## Repair 1: Negative Scores

### Before
Some submission records had scores below 0.

### Repair Applied
Updated negative scores to 0 using staging repair scripts.

### After
All scores are now within valid range.

---

## Repair 2: Invalid Difficulty Values

### Before
Some problems contained invalid difficulty labels.

### Repair Applied
Invalid values updated to 'Medium'.

### After
All difficulty values are valid.

---

## Repair 3: Duplicate Emails

### Before
Duplicate student emails were detected.

### Repair Applied
Duplicate records moved to staging for manual verification.

### After
Only unique emails remain in main table.
