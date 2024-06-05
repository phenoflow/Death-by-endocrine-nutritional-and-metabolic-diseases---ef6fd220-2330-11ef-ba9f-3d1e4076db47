# John, A, McGregor, J., Jones, I., Lee, S. C., Walters, J. T. R., Owen, M. J., O'Donovan, M., DelPozo-Banos, M., Berridge, D., and Lloyd, K., 2024.

import sys, csv, re

codes = [{"code":"E11.7","system":"icd10"},{"code":"E11.6","system":"icd10"},{"code":"E10.3","system":"icd10"},{"code":"E11","system":"icd10"},{"code":"E10.5","system":"icd10"},{"code":"E11.5","system":"icd10"},{"code":"E10.7","system":"icd10"},{"code":"E10.9","system":"icd10"},{"code":"E10","system":"icd10"},{"code":"E11.1","system":"icd10"},{"code":"E10.2","system":"icd10"},{"code":"E11.2","system":"icd10"},{"code":"E11.9","system":"icd10"},{"code":"E10.1","system":"icd10"},{"code":"E10.8","system":"icd10"},{"code":"E11.3","system":"icd10"},{"code":"E10.6","system":"icd10"},{"code":"E11.8","system":"icd10"},{"code":"E10.0","system":"icd10"},{"code":"E11.0","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('death-by-endocrine-nutritional-and-metabolic-diseases-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-noninsulindepend---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-noninsulindepend---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-noninsulindepend---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
