# Local Art Gallery Coupon Design

![Slide01](https://user-images.githubusercontent.com/20660492/61995013-79c47c80-b0b5-11e9-897d-1a48de5f2a17.png)

### Project Background
![Slide02](https://user-images.githubusercontent.com/20660492/61995014-79c47c80-b0b5-11e9-852d-b11ee80dd10c.png)
So a t-test is needed to rest this debate, which is One of the most common tests in statistics is the t-test, used to determine whether the means of two groups are equal to each other. The assumption for the test is that both groups are sampled from normal distributions with equal variances. 

### Data Preview
![Slide03](https://user-images.githubusercontent.com/20660492/61995015-7a5d1300-b0b5-11e9-9a5c-20d9e3d34295.png)
T-test: One of the most common tests in statistics, used to determine whether the means of two groups are equal to each other. The assumption for the test is that both groups are sampled from normal distributions with equal variances. 

Here I plot the Density distribution of four items spending
（not technically normally distributed, but as instructed in the documentation）
This might be the most vulnerable part of this analysis. And I hope professor could leave some comments on this later on

From this preview of data,
 -- this does not tell many things. 
 -- To Dig deeper, need to segment the customer and examine the corresponding coupon effects on each segment
![Slide04](https://user-images.githubusercontent.com/20660492/61995016-7a5d1300-b0b5-11e9-8760-74b2404d07fb.png)

We now have a better understanding of client distribution
![image](https://user-images.githubusercontent.com/20660492/61995123-93b28f00-b0b6-11e9-938c-18d3276a9dd8.png)
![image](https://user-images.githubusercontent.com/20660492/61995126-96ad7f80-b0b6-11e9-9318-9b35eadc4485.png)
![image](https://user-images.githubusercontent.com/20660492/61995129-990fd980-b0b6-11e9-8c66-d99fe6b575fa.png)

### Test Preparation
Based on the above 18 segmentations and the 4 types of spending, we got 72 (4*3*3*2 = 72) subgroups of customer spending and got 72 pair of t-test results. Then I get a new dataset like this. 

the data contains not only the characteristics (like age, joindate, etc.) of this customer segment, but also the t-test results (like p-value and the mean of t-test). Based on these data, we implemented the following analysis to check the coupon effects on the spending of these customers (significant or insignificant, positive or negative)

Set the significance level to be 1%, we can get 49 remaining t-test that represent significant coupon effects on customer spending
![Slide06](https://user-images.githubusercontent.com/20660492/61995018-7af5a980-b0b5-11e9-8712-28e90ac066e3.png)

Before we dive into the final revenue, we can analyze at a single item spending level.In this way, we can test ‘spending level’
![Slide07](https://user-images.githubusercontent.com/20660492/61995019-7b8e4000-b0b5-11e9-9132-91d74dcbe3f9.png)
![Slide08](https://user-images.githubusercontent.com/20660492/61995020-7b8e4000-b0b5-11e9-99e0-b277136e0bab.png)
![Slide09](https://user-images.githubusercontent.com/20660492/61995021-7b8e4000-b0b5-11e9-9dbb-e0f61c9d0bd1.png)
![Slide10](https://user-images.githubusercontent.com/20660492/61995022-7c26d680-b0b5-11e9-8826-29a5d133b232.png)
Cross check the distribution on different age/spending level
![Slide11](https://user-images.githubusercontent.com/20660492/61995023-7c26d680-b0b5-11e9-8e6d-9d35cba99cfe.png)

### Data Analysis
Its time to go deeper to see the coupon effects on the commission, with the purpose to maximize revenue
![Slide12](https://user-images.githubusercontent.com/20660492/61995024-7c26d680-b0b5-11e9-94af-4db305bb77a3.png)

The purchase of sculpture from young-early joined –medium users are the most responsive and stimulated one. In terms of commission, we can get 15USD more from a single purchase with coupon
![Slide13](https://user-images.githubusercontent.com/20660492/61995025-7cbf6d00-b0b5-11e9-872c-eece030d9d8a.png)

Clear to see sculpture and mosaics benefit most from this coupon. Almost every subgroups buy more, except for middle-aged group. Its also worth mentioning that the behavior changes dramatically as yon grow older. See, the pattern here btw them are totally different.
![Slide14](https://user-images.githubusercontent.com/20660492/61995026-7cbf6d00-b0b5-11e9-8632-348958a98dc3.png)

Similar reasoning process for behavior change among different age groups
![Slide15](https://user-images.githubusercontent.com/20660492/61995027-7cbf6d00-b0b5-11e9-938e-0ce99584f300.png)

To see from the level of aggregated commission, I plotted this heatmap

It’s clear that younger customers(the blue tiles) xare the only subgroup that are positively boosted by this coupon, elders are kind of neutral and slightly negative, and middle-age customers are more easily to take advantage of coupon promotion. Which means, this segment may fail our coupon promotion plan.

With regard to different join_date level, there is no much difference between the upper row and lower row. The same thing happens on the visit_frequency level. Anyways, these two factors are significant to affect the natural spending, but there is no much internal difference.

![Slide16](https://user-images.githubusercontent.com/20660492/61995028-7d580380-b0b5-11e9-8468-9cd10659d485.png)

### Suggestions & Next Steps
![Slide17](https://user-images.githubusercontent.com/20660492/61995029-7d580380-b0b5-11e9-9d61-baae261f71b6.png)
![Slide18](https://user-images.githubusercontent.com/20660492/61995030-7d580380-b0b5-11e9-81fe-9f84af3978e5.png)
![Slide19](https://user-images.githubusercontent.com/20660492/61995031-7df09a00-b0b5-11e9-95b4-5cbeb36e5dc2.png)
