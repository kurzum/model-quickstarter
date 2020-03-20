 ## Update, March 2020

This update generates and upload to dbpedia databus the artifacts of dbpedia-models and wikistatsextractor for all langauges.

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
* ./run_artifacts.sh

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

