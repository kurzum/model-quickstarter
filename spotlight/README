 ## Update, March 2020

This update generates and upload to dbpedia databus the artifacts of dbpedia-models and wikistatsextractor from the corresponding langauges.

## Update, January 2016

This tool now uses the wikistatsextractor by the great folks over at [DiffBot](https://www.diffbot.com/). This means: no more Hadoop and Pig! Running the biggest model (English) takes around 2h on a sing$

### Requirements

- Git
- Maven 3

## Dbpedia-Databus generation

You can use this tool to upload an artifact of dbpedia-models and wikistats for an specific languagee.

* clone the repository
* cd model-quickstarter/
* ./prepare.sh

and then the command to the target model (pattern: ./artifact_databus_uploader.sh $ignoreListFile $workingdir $locale $stopwordsFile $outputModelDir $artifactDir $artifactVersion)

EN - ./artifact_databus_uploader.sh en/ignore.list wdir en_US en/stopwords.list English models/en spotlight/ 2020.03.11/

DE - ./artifact_databus_uploader.sh de/ignore.list wdir de_DE de/stopwords.list German models/de spotlight/ 2020.03.11

NL -./artifact_databus_uploader.sh nl/ignore.list wdir nl_NL nl/stopwords.list Dutch models/nl spotlight/ 2020.03.11

SV - ./artifact_databus_uploader.sh sv/ignore.list wdir sv_SE sv/stopwords.list Swedish models/sv spotlight/ 2020.03.11

PT - ./artifact_databus_uploader.sh pt/ignore.list wdir pt_BR pt/stopwords.list Portuguese models/pt spotlight/ 2020.03.11

FR - ./artifact_databus_uploader.sh fr/ignore.list wdir fr_FR fr/stopwords.list French models/fr spotlight/ 2020.03.11

ES - ./artifact_databus_uploader.sh es/ignore.list wdir es_ES es/stopwords.list Spanish models/es spotlight/ 2020.03.11

TR - ./artifact_databus_uploader.sh tr/ignore.list wdir tr_TR tr/stopwords.list Turkish models/tr spotlight/ 2020.03.11

NO - ./artifact_databus_uploader.sh no/ignore.list wdir no_NO no/stopwords.list Norwegian models/no spotlight/ 2020.03.11

IT -./artifact_databus_uploader.sh None wdir it_IT it/stopwords.list Italian models/it spotlight/ 2020.03.11

DA -./artifact_databus_uploader.sh None wdir da_DK da/stopwords.list Danish models/da spotlight/ 2020.03.11

JA - ./artifact_databus_uploader.sh None wdir ja_JP ja/stopwords.list None models/ja spotlight/ 2020.03.11

CS - ./artifact_databus_uploader.sh None wdir cs_CZ cs/stopwords.list None models/cs spotlight/ 2020.03.11

HU - ./artifact_databus_uploader.sh None wdir hu_HU hu/stopwords.list Hungarian models/hu spotlight/ 2020.03.11

RU - ./artifact_databus_uploader.sh None wdir ru_RU ru/stopwords.list Russian models/ru spotlight/ 2020.03.11

ZH - ./artifact_databus_uploader.sh None wdir zh_CN zh/stopwords.list None models/zh spotlight/ 2020.03.11


If you want to generate the models outside the container, just map volumes for the folders /model-quickstarter/wdir, /model-quickstarter/data and /model-quickstarter/models.

E.g:

```
docker run -v /home/user/data/model/wdir:/model-quickstarter/wdir -v /home/user/data/model/data:/model-quickstarter/data -v /home/user/data/model/models:/model-quickstarter/models -it dbpediaspotlight/mo$
```

## Citation

If you use the current (statistical version) of DBpedia Spotlight or the data/models created using this repository, please cite the following paper.

```bibtex
@inproceedings{isem2013daiber,
  title = {Improving Efficiency and Accuracy in Multilingual Entity Extraction},
  author = {Joachim Daiber and Max Jakob and Chris Hokamp and Pablo N. Mendes},
  year = {2013},
  booktitle = {Proceedings of the 9th International Conference on Semantic Systems (I-Semantics)}
}
```
