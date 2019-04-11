## Tips & tricks

- NLP classification fine tune works best by unfreezing final layers step wise before full unfreeze

## Anki

- What is NLP class of problems? <<>> Given a text, building a model for it.
- What are the examples of NLP class of problems? <<>> Text classification - Spam prevention, identify fake news. 
- What are the steps to train NN for NLP? <<>> 1. Base LM 2. Fine tune to get domain LM 3. Classifier
- What is a language model in NLP? <<>> Model that predicts the next word of a sentence
- For transfer learning: Vision -> NLP => ImageNet -> ? <<>> Wikitext 103 LM
- What is Wikitext 103? <<>> Subset of largest articles from Wikipedia + some preprocessing.
- In NLP what is a corpus? <<>> Collection of documents.
- Parts of LM? <<>> 1. Encoder 2. Generator
- What is Encoder in LM? <<>> Part of LM that understands the sentence
- What is Generator in LM? <<>> Part of LM that predicts the next word
- What steps happen when NLP data is loaded? <<>> 1. Tokenization 2. Numericalization 
- What is Tokenization in NLP? <<>> Generating units corresponding to words, punctuation, structure data etc.
- What is Numericalization in NLP? <<>> Generating the Vocabulary
- What is Vocabulary in NLP? <<>> Bounded list of unique tokens
- What is self supervised learning? <<>> Supervisory signals are extracted from the context/metadata naturally present in the data.
- What is an example of self-supervised learning? <<>> Building a text model.
- What is the "Tabular data" class of problems? <<>> Modeling data found in db,spreadsheets.
- What are the examples of "Tabular data" class of problems? <<>> Recommendation systems, Fraud detection, pricing, resume screening, etc.
- What are independent variables? <<>> Variables used to make predictions with.
- Type of independent varialbes? <<>> 1. Categorical 2. Continous
- What are Categorical independent variables? <<>> Can select from a set.
- What is an example of an Categorical indendent variable? <<>> marital-status, race.
- What are Continous independent variables? <<>> Are numbers.
- What is an example of an Continous indendent variable? <<>> Age.
- What is a processor for tablular data? <<>> Once ahead of time preprocessing of data frames, rather than on the fly.
- What are examples of processor for tabular data? <<>> FillMissing, Normalize
- What is 'Collaborative filtering' class of problems? <<>> Models users and their actions
- What are the examples of 'Collaborative filtering' class of problems? <<>> User ID, likes this movie ID at the basic level.
- What are the 2 structures of Collaborative data? <<>> 1. Table with user_id, movie_id, rating rows. 2. use_id x movie_id with rating in cells
- What is the cold start problem for collaborative filtering? <<>> Make good predictions when there is a new user or movie, but at that time you dont have any data either.
- What are the ways to solve the cold start problem? <<>> 1. Second non-collabfiltering metadata model 2. UI driven
- Example of the metadata driven model solution to cold start problem> <<>> Make guesses using metadata like age, sex, geography.
- Example of the UI drivensolution of cold start problem? Netflix used to ask bootstrap questions by asking like/dislikes of an initial list of movies.

## Katas

- L04-Kata-NLP
- L04-Kata-Tabular
- L04-Kata-CollabFiltering

## TODO

- Accuracy analysis for all Katas
- Predict on CPU for all Katas

## References

- [Lesson material](https://course-v3.fast.ai/videos/?lesson=4)
- [Lesson transcripts](https://github.com/hiromis/notes/blob/master/Lesson4.md)
