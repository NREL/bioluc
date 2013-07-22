@echo RUN %1
bin\sed.exe -f preprocess.sed "data\Input Data V2\input-%1.csv" > "data\Input Data V2\input.csv"
"C:\Program Files (x86)\isee systems\STELLA 9.1.4\STELLA.exe" -i -r -x LUC-batch.stm
bin\gawk.exe -f postprocess.awk -v run=%1 "data\Input Data V2\output.csv" > "data\Input Data V2\output-%1.csv"
type "data\Input Data V2\output-%1.csv" >> "data\Input Data V2\output-all.csv"