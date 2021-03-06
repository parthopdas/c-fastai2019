## Tips & tricks

- Sample notebook for API: Search on docs.fast.ai -> Open doc -> Extract name -> [fast_ai_repo]/notebooks/[name].ipynb
- API documentation: Cursor on symbol -> Shift+Tab cycle
- API source code: Execute [_symbol_]??

## Anki

- DataSet <<>> Abstract class representing a data set
- DataSet members <<>> 1. Length 2. Indexer
- DataLoader <<>> Creates a mini-batch from a DataSet
- DataBunch <<>> 1. Combines train_dl, valid_dl, test_dl 2. Loads them into device 3. Applies transforms
- Data Block API <<>> Highly configurable Fluent API to generate DataBunch
- Steps of loading data used by Data block API? <<>> LLSDA - Locate, label, split, gen dataset, augment
- What is segmentation? <<>> Classification for every pixel in each image.

## Katas

- L03-Kata-Multilabel
- L03-Kata-Segmentation
- L03-Kata-Regressions

## TODO

- Add to kata: L03-Kata-Regressions: Add data augmentation
- Add to kata: Accuracy analysis
- Add to kata: Individual predictions using CPU

## References

- [Lesson material](https://course-v3.fast.ai/videos/?lesson=3)
- [Lesson transcripts](https://github.com/hiromis/notes/blob/master/Lesson3.md)
