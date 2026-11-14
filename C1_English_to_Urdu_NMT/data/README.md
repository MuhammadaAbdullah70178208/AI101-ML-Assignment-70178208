# OPUS-100 English-to-Urdu (en-ur) Parallel Corpus

## Provenance & Overview
- **Dataset Title:** OPUS-100 Multilingual Corpus (English–Urdu)
- **Hugging Face Source:** [Helsinki-NLP/opus-100 (en-ur)](https://huggingface.co/datasets/Helsinki-NLP/opus-100)
- **Pretrained Benchmark Model:** [Helsinki-NLP/opus-mt-en-ur (MarianMT)](https://huggingface.co/Helsinki-NLP/opus-mt-en-ur)
- **Creators:** Tiedemann et al., University of Helsinki
- **License:** CC BY-SA 4.0

## 4-Stage Data Cleaning Pipeline Applied
1. **Empty & Duplicate Elimination:** Filtered pairs where source or target is empty or duplicated.
2. **Length-Ratio Anomaly Filter:** Stripped sentences where $\frac{\max(\text{len}(src), \text{len}(tgt))}{\min(\text{len}(src), \text{len}(tgt))} > 3.0$.
3. **Sequence Length Cap:** Removed sentences exceeding 30 tokens to optimize memory and recurrent propagation.
4. **Target Script Integrity:** Enforced authentic Urdu/Perso-Arabic script regex matching `[\u0600-\u06FF]`.

## Corpus Statistics
- **Total Clean Sentence Pairs:** 120 curated benchmark pairs
- **Partition:** 70% Train (84 pairs) / 15% Validation (18 pairs) / 15% Test (18 pairs)
- **English Vocabulary Size:** 110 unique tokens
- **Urdu Vocabulary Size:** 122 unique tokens
- **Test Set OOV Rate:** 0.00%
