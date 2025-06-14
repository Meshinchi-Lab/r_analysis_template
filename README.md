### Exploratory Data Analysis (EDA) Template

See the [contributing guidelines](https://github.com/Meshinchi-Lab/contributing_guidelines) for complete details and usage instructions. 

#### Quick Start

```bash
# e.g. RNAseq, ATACseq, etc.
DATATYPE="RNAseq" 
# e.g. pAML_biomarkers, adult_AML_biomarker_validation, T-ALL_fusions, etc.
DESCRIPTION="T-ALL_fusions" 
OUTDIR="$(date +%Y-%m-%d)_${DATATYPE}_${DESCRIPTION}"

mkdir $OUTDIR
cd $OUTDIR
quarto use template Meshinchi-Lab/analysis_template
```