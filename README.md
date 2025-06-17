### Exploratory Data Analysis (EDA) Template

See the [contributing guidelines](https://github.com/Meshinchi-Lab/contributing_guidelines) for complete details and usage instructions. 

#### Quick Start

```bash
# e.g. RNAseq, ATACseq, etc.
DATATYPE="RNAseq" 
# e.g. pAML_biomarkers, adult_AML_biomarker_validation, T-ALL_fusions, etc.
DESCRIPTION="Example_Repo" 
OUTDIR="$(date +%Y.%m.%d)_${DATATYPE}_${DESCRIPTION}"

mkdir -p $OUTDIR
cd $OUTDIR
quarto use template Meshinchi-Lab/analysis_template
```
Follow the prompts in the terminal to set up the template and select the default options. 

You will see the following output:
> Downloading [###################################] 0.0
> [✓] Downloading
>  [✓] Unzipping
> Preparing template files...
> [✓] Copying files...
> Files created:
> - 2025-06-13_RNAseq_Example_Repo.qmd

The `2025-06-13_RNAseq_Example_Repo.qmd` will be the EDA report. You can rename it if you want.
You can now open the `.qmd` file in your favorite text editor and start editing it. When you are ready to render the HTML report, run:

```bash
quarto render 2025-06-13_RNAseq_Example_Repo.qmd
```