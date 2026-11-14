# Flickr8k Multi-Reference Image Captioning Dataset (Task C3)

## Dataset Overview
- **Name:** Flickr8k Image Captioning Benchmark
- **Origin & Citation:** Hodosh, M., Young, P., & Hockenmaier, J. (2013). *Framing Image Description as a Ranking Task: Data, Models and Evaluation Metrics*. Journal of Artificial Intelligence Research (JAIR), 47, 853-899.
- **Task Modality:** Vision-Language Cross-Modal Sequence Generation: Input Visual Image Feature Vector $\to$ Output Natural Language Sentence.
- **Total Samples ($N$):** 2,000 photographic scenes across natural domains (canine outdoor play, children recreation, outdoor sports, street photography, coastal surfing).
- **Multi-Reference Annotations:** Each image instance is annotated with 5 distinct human-authored reference captions ($ref_1, \dots, ref_5$) to account for linguistic variance and lexical diversity.

## Data Preprocessing Protocol
- **Visual Encoding:** Feature representations extracted from deep convolutional neural networks (ResNet-50 / InceptionV3 penultimate pool layer) mapped to a shared continuous embedding space.
- **Linguistic Encoding:** Captions lowercased, punctuation-stripped, and framed with sequence start and termination tokens (`<BOS>`, `<EOS>`).
- **Partitioning:** Disjoint 70% Train ($N=1,400$), 15% Validation ($N=300$), and 15% Test ($N=300$) image instances.
