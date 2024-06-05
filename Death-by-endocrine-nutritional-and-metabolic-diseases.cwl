cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-hypofunction---secondary:
    run: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-hypofunction---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-hypoparathyroidism---secondary:
    run: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-hypoparathyroidism---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-hypofunction---secondary/output
  death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-iodinedeficiencyrelated---secondary:
    run: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-iodinedeficiencyrelated---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-hypoparathyroidism---secondary/output
  death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-malnutritionrelat---secondary:
    run: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-malnutritionrelat---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-iodinedeficiencyrelated---secondary/output
  death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-depletion---secondary:
    run: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-depletion---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-malnutritionrelat---secondary/output
  death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-hypervitaminosis---secondary:
    run: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-hypervitaminosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-depletion---secondary/output
  death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-unspec---secondary:
    run: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-unspec---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-hypervitaminosis---secondary/output
  death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-porphyria---secondary:
    run: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-porphyria---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-unspec---secondary/output
  death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-lactase---secondary:
    run: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-lactase---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-porphyria---secondary/output
  primary-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary:
    run: primary-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-lactase---secondary/output
  intestinal-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary:
    run: intestinal-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: primary-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary/output
  death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-hyperfunction---secondary:
    run: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-hyperfunction---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: intestinal-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary/output
  death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-amyloidosis---secondary:
    run: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-amyloidosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-hyperfunction---secondary/output
  toxic-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary:
    run: toxic-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-amyloidosis---secondary/output
  mineral-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary:
    run: mineral-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: toxic-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary/output
  death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-pyrimidine---secondary:
    run: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-pyrimidine---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: mineral-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary/output
  multinodular-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary:
    run: multinodular-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-pyrimidine---secondary/output
  death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-sphingolipidosis---secondary:
    run: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-sphingolipidosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: multinodular-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary/output
  death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-pellagra---secondary:
    run: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-pellagra---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-sphingolipidosis---secondary/output
  aminoacid-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary:
    run: aminoacid-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-pellagra---secondary/output
  cystic-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary:
    run: cystic-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: aminoacid-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary/output
  death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-cushing---secondary:
    run: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-cushing---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: cystic-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary/output
  death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-classified---secondary:
    run: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-classified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-cushing---secondary/output
  aromatic-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary:
    run: aromatic-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-classified---secondary/output
  death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-neuro---secondary:
    run: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-neuro---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: aromatic-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary/output
  multiple-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary:
    run: multiple-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-neuro---secondary/output
  death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-condition---secondary:
    run: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-condition---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: multiple-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary/output
  death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-noninsulindepend---secondary:
    run: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-noninsulindepend---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-condition---secondary/output
  death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-glucosaminoglycan---secondary:
    run: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-glucosaminoglycan---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-noninsulindepend---secondary/output
  death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-ketoacidosis---secondary:
    run: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-ketoacidosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-glucosaminoglycan---secondary/output
  death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-hyperlipidaemia---secondary:
    run: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-hyperlipidaemia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-ketoacidosis---secondary/output
  death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-copper---secondary:
    run: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-copper---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-hyperlipidaemia---secondary/output
  death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-stature---secondary:
    run: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-stature---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-copper---secondary/output
  death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-hypoglycaemia---secondary:
    run: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-hypoglycaemia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-stature---secondary/output
  death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-selenium---secondary:
    run: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-selenium---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-hypoglycaemia---secondary/output
  ascorbic-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary:
    run: ascorbic-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-selenium---secondary/output
  death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-obesity---secondary:
    run: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-obesity---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: ascorbic-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary/output
  death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-hyperalimentation---secondary:
    run: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-hyperalimentation---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-obesity---secondary/output
  death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-failure---secondary:
    run: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-failure---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-hyperalimentation---secondary/output
  death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-carbohydrate---secondary:
    run: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-carbohydrate---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-failure---secondary/output
  death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-adiposity---secondary:
    run: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-adiposity---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-carbohydrate---secondary/output
  death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-druginduced---secondary:
    run: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-druginduced---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-adiposity---secondary/output
  death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-puberty---secondary:
    run: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-puberty---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-druginduced---secondary/output
  secondary-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary:
    run: secondary-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-puberty---secondary/output
  death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-complication---secondary:
    run: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-complication---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: secondary-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary/output
  death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-thymu---secondary:
    run: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-thymu---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-complication---secondary/output
  death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-enzyme---secondary:
    run: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-enzyme---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-thymu---secondary/output
  excess-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary:
    run: excess-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-enzyme---secondary/output
  other-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary:
    run: other-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: excess-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary/output
  death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-hypersecretion---secondary:
    run: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-hypersecretion---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: other-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary/output
  death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-marasmu---secondary:
    run: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-marasmu---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-hypersecretion---secondary/output
  testicular-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary:
    run: testicular-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-marasmu---secondary/output
  death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-manifestation---secondary:
    run: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-manifestation---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: testicular-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary/output
  death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-disord---secondary:
    run: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-disord---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-manifestation---secondary/output
  death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-periph---secondary:
    run: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-periph---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-disord---secondary/output
  death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-glycoprotein---secondary:
    run: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-glycoprotein---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-periph---secondary/output
  death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-lactose---secondary:
    run: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-lactose---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-glycoprotein---secondary/output
  mixed-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary:
    run: mixed-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-lactose---secondary/output
  subclinical-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary:
    run: subclinical-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: mixed-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary/output
  death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-magnesium---secondary:
    run: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-magnesium---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: subclinical-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary/output
  ectopic-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary:
    run: ectopic-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-magnesium---secondary/output
  death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-hypopituitarism---secondary:
    run: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-hypopituitarism---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: ectopic-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary/output
  death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-acidbase---secondary:
    run: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-acidbase---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-hypopituitarism---secondary/output
  marasmic-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary:
    run: marasmic-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-acidbase---secondary/output
  death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-intolerance---secondary:
    run: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-intolerance---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: marasmic-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary/output
  death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-specified---secondary:
    run: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-specified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-intolerance---secondary/output
  death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-thyroiditis---secondary:
    run: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-thyroiditis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-specified---secondary/output
  death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-hyperaldosteronism---secondary:
    run: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-hyperaldosteronism---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-thyroiditis---secondary/output
  death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-hormone---secondary:
    run: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-hormone---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-hyperaldosteronism---secondary/output
  ophthalmic-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary:
    run: ophthalmic-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-hormone---secondary/output
  death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-autoimmune---secondary:
    run: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-autoimmune---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: ophthalmic-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary/output
  death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-insufficiency---secondary:
    run: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-insufficiency---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-autoimmune---secondary/output
  death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-kwashiorkor---secondary:
    run: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-kwashiorkor---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-insufficiency---secondary/output
  death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-fibrosis---secondary:
    run: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-fibrosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-kwashiorkor---secondary/output
  death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-rickets---secondary:
    run: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-rickets---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-fibrosis---secondary/output
  renal-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary:
    run: renal-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-rickets---secondary/output
  death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-defects---secondary:
    run: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-defects---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: renal-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary/output
  death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-diffuse---secondary:
    run: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-diffuse---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-defects---secondary/output
  chronic-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary:
    run: chronic-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-diffuse---secondary/output
  ovarian-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary:
    run: ovarian-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: chronic-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary/output
  adrenogenital-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary:
    run: adrenogenital-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: ovarian-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary/output
  death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-nodule---secondary:
    run: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-nodule---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule83
      potentialCases:
        id: potentialCases
        source: adrenogenital-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary/output
  death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-calcium---secondary:
    run: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-calcium---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule84
      potentialCases:
        id: potentialCases
        source: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-nodule---secondary/output
  death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-crisis---secondary:
    run: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-crisis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule85
      potentialCases:
        id: potentialCases
        source: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-calcium---secondary/output
  polyglandular-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary:
    run: polyglandular-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule86
      potentialCases:
        id: potentialCases
        source: death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause-crisis---secondary/output
  adrenocortical-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary:
    run: adrenocortical-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule87
      potentialCases:
        id: potentialCases
        source: polyglandular-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary/output
  heredofamilial-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary:
    run: heredofamilial-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule88
      potentialCases:
        id: potentialCases
        source: adrenocortical-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule89
      potentialCases:
        id: potentialCases
        source: heredofamilial-death-by-endocrine-nutritional-and-metabolic-diseases-natural-cause---secondary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
  inputModule80:
    id: inputModule80
    doc: Python implementation unit
    type: File
  inputModule81:
    id: inputModule81
    doc: Python implementation unit
    type: File
  inputModule82:
    id: inputModule82
    doc: Python implementation unit
    type: File
  inputModule83:
    id: inputModule83
    doc: Python implementation unit
    type: File
  inputModule84:
    id: inputModule84
    doc: Python implementation unit
    type: File
  inputModule85:
    id: inputModule85
    doc: Python implementation unit
    type: File
  inputModule86:
    id: inputModule86
    doc: Python implementation unit
    type: File
  inputModule87:
    id: inputModule87
    doc: Python implementation unit
    type: File
  inputModule88:
    id: inputModule88
    doc: Python implementation unit
    type: File
  inputModule89:
    id: inputModule89
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
