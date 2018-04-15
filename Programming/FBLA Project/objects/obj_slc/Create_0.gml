		//Accounting\\
//Questions
accQ[0] = "The amount of goods on hand for sale to customers is";
accQ[1] = "A petty cash fund is replenished";
accQ[2] = "A business owned by two or more people";
//Answer Choices
accA[0, 0] = "An inventory";
accA[0, 1] = "Merchandise inventory";//Correct
accA[0, 2] = "Puchases inventory";
accA[1, 0] = "Daily";
accA[1, 1] = "Monthly";//Correct
accA[1, 2] = "Quarterly";
accA[2, 0] = "Corporation";
accA[2, 1] = "Limited liability coporation";
accA[2, 2] = "Partnership";//Correct
//Correct Answers
accCA[0] = 1;
accCA[1] = 1;
accCA[2] = 2;

		//Intro FBLA\\
//Questions
fblaQ[0] = "Keywords found in the FBLA goals are";
fblaQ[1] = "Which statement is in the last paragraph of the FBLA Creed?";
fblaQ[2] = "Handbooks for officers can be purchased from";
//Answer Choices
fblaA[0, 0] = "Confidence, understanding, efficient, scholarship";//Correct
fblaA[0, 1] = "Seek, sincere, abide, initiative";
fblaA[0, 2] = "Promise, aims, qualites, active";
fblaA[1, 0] = "I promise to use my abilities";//Correct
fblaA[1, 1] = "I agree to do my utmost";
fblaA[1, 2] = "Every person should actively";
fblaA[2, 0] = "NAP Commitee";
fblaA[2, 1] = "MarketPlace";//Correct
fblaA[2, 2] = "Board of directors";
//Correct Answers
fblaCA[0] = 0;
fblaCA[1] = 0;
fblaCA[2] = 1;

		//Financial Math\\
//Questions
finQ[0] = "If gas is $1.89/gal and was $1.68/gal, what percent was the price increase?";
finQ[1] = "Jake buys shirts at $10.50. If the price is marked up 160%, what is the selling price?";
finQ[2] = "Which one of the following is not a type of discount";
//Answer Choices
finA[0, 0] = "21%";
finA[0, 1] = "11%";
finA[0, 2] = "13%";//Correct
finA[1, 0] = "$16.80";//Correct
finA[1, 1] = "$22.50";
finA[1, 2] = "$15.23";
finA[2, 0] = "Credit discount";//Correct
finA[2, 1] = "Trade discount";
finA[2, 2] = "Cash discount";
//Correct Answers
finCA[0] = 2;
finCA[1] = 0;
finCA[2] = 0;

//Variables
question = 0;
answerOffset = 48;
questionValue = 250;
globalvar win;
win = false;