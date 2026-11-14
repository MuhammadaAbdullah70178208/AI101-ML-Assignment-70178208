# UCI Dry Bean Dataset (Task A3)

## Dataset Overview
- **Name:** Dry Bean Dataset (UCI Machine Learning Repository ID: 602)
- **Origin & Citation:** Koklu, M., & Ozkan, I. A. (2020). *Multiclass classification of dry beans using computer vision and machine learning techniques*. Computers and Electronics in Agriculture, 174, 105507.
- **Samples ($N$):** 3,500 grain instances.
- **Classes ($K=7$):**
  1. `Dermason` (26% frequency, small round bean)
  2. `Sira` (19% frequency, very morphologically similar to Dermason)
  3. `Seker` (15% frequency, highly spherical)
  4. `Horoz` (14% frequency, elongated/high aspect ratio)
  5. `Cali` (12% frequency, large kidney-type)
  6. `Barbunya` (10% frequency, speckled kidney bean, overlapping with Cali)
  7. `Bombay` (4% frequency, massive white runner bean)

## Features (16 Continuous Morphological & Geometric Attributes)
1. **Area ($A$):** The number of pixels within the bean boundary.
2. **Perimeter ($P$):** The circumference length along the bean contour.
3. **MajorAxisLength ($L$):** Distance between bean extremes along major axis.
4. **MinorAxisLength ($l$):** Distance between bean extremes along minor axis.
5. **AspectRatio ($K$):** Dimension relationship $K = L / l$.
6. **Eccentricity ($e$):** Ovalness ratio $\sqrt{1 - (l/L)^2}$.
7. **ConvexArea ($C$):** Area of smallest convex polygon bounding the bean.
8. **EquivDiameter ($d$):** Equivalent circle diameter $\sqrt{4A/\pi}$.
9. **Extent ($Ex$):** Ratio of bean area to bounding bounding box.
10. **Solidity ($S$):** Convexity index $A / C$.
11. **Roundness ($R$):** Circularity measure $4\pi A / P^2$.
12. **Compactness ($CO$):** Compactness index $\sqrt{4A / (\pi L^2)}$.
13. **ShapeFactor1 ($SF_1$):** $L / A$.
14. **ShapeFactor2 ($SF_2$):** $l / A$.
15. **ShapeFactor3 ($SF_3$):** $A / (\pi (L/2)^2)$.
16. **ShapeFactor4 ($SF_4$):** $A / (C)$.

## Split Protocol
- Disjoint stratified partitioning: 70% Train ($N=2,450$), 15% Validation ($N=525$), 15% Test ($N=525$).
- Zero target leakage. Scaling parameters ($\mu, \sigma$) computed strictly on the training partition.
