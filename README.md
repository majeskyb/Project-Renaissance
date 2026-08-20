# Project-Renaissance
Project repository for learning BASIC, RPL, Python, Pascal and other obscure programming languages for fun
Sprint 1- Weightlifting Calc
- First Program writing from scratch
- Future versions will have code improvements as I improve

Revision Ideas
- Use a loop to calculate plates
- Replace variables with Array
- Post V1.0, start developing a TI-74 version

Compatibility issues
1. FLOOR function works with Quite BASIC, not QB64.  Since I implemented a check for non-negative values, I can swap to INT
2. Line 720 needed to be split.  The : after an IF statement made the Let command conditional instead if explicit.  Dropped it down to line 725
