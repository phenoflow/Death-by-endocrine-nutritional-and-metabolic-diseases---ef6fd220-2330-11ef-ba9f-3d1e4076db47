# John, A, McGregor, J., Jones, I., Lee, S. C., Walters, J. T. R., Owen, M. J., O'Donovan, M., DelPozo-Banos, M., Berridge, D., and Lloyd, K., 2024.

import sys, csv, re

codes = [{"code":"E53.0","system":"icd10"},{"code":"E64.2","system":"icd10"},{"code":"E50.3","system":"icd10"},{"code":"E50.4","system":"icd10"},{"code":"E50.6","system":"icd10"},{"code":"E64.1","system":"icd10"},{"code":"E53.9","system":"icd10"},{"code":"E55.0","system":"icd10"},{"code":"E53","system":"icd10"},{"code":"E50.0","system":"icd10"},{"code":"E55","system":"icd10"},{"code":"E53.8","system":"icd10"},{"code":"E67.0","system":"icd10"},{"code":"E56.0","system":"icd10"},{"code":"E67.3","system":"icd10"},{"code":"E50.5","system":"icd10"},{"code":"E56","system":"icd10"},{"code":"E50","system":"icd10"},{"code":"E50.8","system":"icd10"},{"code":"E50.9","system":"icd10"},{"code":"E56.1","system":"icd10"},{"code":"E50.2","system":"icd10"},{"code":"E50.1","system":"icd10"},{"code":"E53.1","system":"icd10"},{"code":"E55.9","system":"icd10"},{"code":"E56.8","system":"icd10"},{"code":"E56.9","system":"icd10"},{"code":"E50.7","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('death-by-endocrine-nutritional-and-metabolic-diseases-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-hypervitaminosis---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-hypervitaminosis---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-hypervitaminosis---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
