# BBC News / XSum Abstractive Summarisation Dataset (Task C2)

## Dataset Overview
- **Name:** Extreme Summarisation (XSum) BBC News Benchmark
- **Source:** Narayan, S., Cohen, S. B., & Lapata, M. (2018). *Don't Give Me the Details, Just the Summary! Topic-Aware Convolutional Neural Networks for Extreme Summarization*. EMNLP.
- **Task Modality:** Sequence-to-Sequence (Seq2Seq) NLP: Input full news article $\to$ Target 1-sentence abstractive summary.
- **Total Samples ($N$):** 2,500 professionally written news article-summary pairs across Politics, Business, Technology, Science, and Sports.

## Attributes
1. **`article` (String):** Full body of the BBC news report ($50$ to $200$ words).
2. **`summary` (String):** Concise, single-sentence abstractive summary ($10$ to $20$ words).
3. **`lead_1` (String):** The first sentence of the article, extracted to serve as the canonical Lead-1 extractive baseline.

## Split Protocol
- Disjoint 70% Train ($N=1,750$), 15% Validation ($N=375$), and 15% Test ($N=375$).
- Zero contamination across splits. Vocabulary and tokenizer state fitted exclusively on the training corpus.
