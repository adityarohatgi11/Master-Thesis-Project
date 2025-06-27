# Redundant Files Cleanup Plan

## Files Identified for Removal

### 1. **Duplicate Data Files**
- `02_Data/Processed_Data/Extended_Dataset_2010_2024/financial_data_with_carbon_macro_2010_2024_v2.csv`
  - **Reason**: Nearly identical to `financial_data_with_carbon_macro_2010_2024.csv` (minor precision differences)
  - **Action**: Remove the "_v2" version, keep the original

### 2. **Archive Duplicates**
- `05_Archive/Duplicates/carbon_shock_event_dates_14yr.csv`
  - **Reason**: Duplicate of file already in `02_Data/Raw_Data/Policy_Events/carbon_shock_event_dates.csv`
  - **Action**: Remove from archive (original is safely stored in raw data)

### 3. **Root Directory Cleanup**
- `FOLDER_REORGANIZATION_PLAN.md` (in root)
- `MANUAL_DATA_ORGANIZATION_GUIDE.md` (in root) 
- `reorganize_project.sh` (in root)
- `REORGANIZATION_COMPLETE.md` (in root)
  - **Reason**: These are administrative files that should be moved to 06_Admin/
  - **Action**: Move to admin folder, clean up root

### 4. **System Files** (if any exist)
- `.DS_Store` files
- `Thumbs.db` files
- Temporary files (`.tmp`, `.temp`)
  - **Action**: Remove completely

## Cleanup Actions

### Step 1: Remove True Duplicates
Remove files that are actually redundant:
- Delete `financial_data_with_carbon_macro_2010_2024_v2.csv`
- Delete archived duplicate files

### Step 2: Reorganize Admin Files
Move project administration files to proper location:
- Move all `.md` files and scripts from root to `06_Admin/`

### Step 3: System Cleanup
Remove any system-generated files that may exist.

## Files to Keep (Verification)

### Data Files
All the following are **NOT duplicates** and should be kept:
- Files with `_14yr` suffix (different time periods)
- Files with different analysis types (ICLN vs XLE)
- Different model outputs (GARCH vs LSTM)
- Different analysis results (regression, causal, event study)

## Post-Cleanup Structure

After cleanup, root directory should only contain:
- `README.md`
- Main folders (01_Documentation through 06_Admin)
- All other files properly organized in subdirectories

## Estimated Space Savings
- **~400KB** from duplicate financial data file
- **~50KB** from various small redundant files
- **Improved organization** - Much cleaner root directory 