# John, A, McGregor, J., Jones, I., Lee, S. C., Walters, J. T. R., Owen, M. J., O'Donovan, M., DelPozo-Banos, M., Berridge, D., and Lloyd, K., 2024.

import sys, csv, re

codes = [{"code":"E14.9","system":"icd10"},{"code":"E14.3","system":"icd10"},{"code":"E07.9","system":"icd10"},{"code":"E13.8","system":"icd10"},{"code":"E34.9","system":"icd10"},{"code":"E28.9","system":"icd10"},{"code":"E14","system":"icd10"},{"code":"E85.9","system":"icd10"},{"code":"E72.9","system":"icd10"},{"code":"E29.9","system":"icd10"},{"code":"E23.7","system":"icd10"},{"code":"E20.9","system":"icd10"},{"code":"E73.9","system":"icd10"},{"code":"E06.9","system":"icd10"},{"code":"E25.9","system":"icd10"},{"code":"E14.8","system":"icd10"},{"code":"E83.9","system":"icd10"},{"code":"E03.9","system":"icd10"},{"code":"E13.6","system":"icd10"},{"code":"E70.9","system":"icd10"},{"code":"E84.9","system":"icd10"},{"code":"E88.9","system":"icd10"},{"code":"E14.7","system":"icd10"},{"code":"E30.9","system":"icd10"},{"code":"E26.9","system":"icd10"},{"code":"E31.9","system":"icd10"},{"code":"E21.3","system":"icd10"},{"code":"E32.9","system":"icd10"},{"code":"E77.9","system":"icd10"},{"code":"E27.9","system":"icd10"},{"code":"E79.9","system":"icd10"},{"code":"E71.2","system":"icd10"},{"code":"E24.9","system":"icd10"},{"code":"E14.0","system":"icd10"},{"code":"E14.2","system":"icd10"},{"code":"E66.9","system":"icd10"},{"code":"E21.5","system":"icd10"},{"code":"E14.1","system":"icd10"},{"code":"E22.9","system":"icd10"},{"code":"E74.9","system":"icd10"},{"code":"E14.6","system":"icd10"},{"code":"E14.5","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('death-by-endocrine-nutritional-and-metabolic-diseases-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-unspec---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-unspec---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-unspec---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
