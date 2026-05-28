# Repair Plan

## Issue 1: Duplicate Emails
Action:
- Move duplicates to staging table
- Verify manually
- Keep latest valid record

---

## Issue 2: Negative Scores
Action:
- Correct invalid score values
- Set minimum score to 0

---

## Issue 3: Invalid Difficulty Values
Action:
- Replace invalid values with valid difficulty levels

---

## Issue 4: Missing Foreign Keys
Action:
- Remove orphan records after verification

---

## Issue 5: NULL Emails
Action:
- Request corrected email data from source system
