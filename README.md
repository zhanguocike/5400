# 5400
## 123
1
The two figures show the plot of average fitness and best fitness. I choose the range of generation at 0-500 , because from figure3 and fugure4 we can see that the fitness tend to be stable after the 150th  generation, so the 0-500 range can clearly shows the evolution process, including the increasing state and stable state.

2
As the increasing of generation, the performance of the mice collecting cheese is becoming better, they tend to collect more cheese and use shorter distance.
At generation 1, the mice move slowly and hardly get the cheese.
At generation 100, a few mouse get cheese, and they are moving faster, 
At generation 1000, the mouse can get more cheese, and have a better collecting efficiency by moving with suitable cycles. 
! [1](./Q1/1.svg)


3
The fitness function is the GetFitness() in source code, it  use the amount of cheese that have been collected divided by the power usage of mice, which is the distance that they have been through.
I change the function by using constant number to replace using the amount of cheese to divided by a constant number. 
Case 1  
virtual float GetFitness()const
	{
	return This.cheesesFound > 0 ? static_cast<float>(This.cheesesFound) / 1 : 0;
	}
  The amount of collected cheese is lower than the original one, and the mice are moving straight after generation 500.
Case 2 divide 100   
virtual float GetFitness()const
	{
	return This.cheesesFound > 0 ? static_cast<float>(This.cheesesFound) / 100>() : 0;
	}
The performance is between case1 and case 3
Case 3 divide 10000 
virtual float GetFitness()const
	{
	return This.cheesesFound > 0 ? static_cast<float>(This.cheesesFound) / 10000 : 0;
	}
The collecting performance is the best among the three case
From the above three case, the simulation shows at the same generation, if the fitness is bigger, then the mice are more likely to move at a straight line, and the performance of collecting cheese is decreasing.
Case 4 1/distance   
virtual float GetFitness()const
	{
	return This.cheesesFound > 0 ? 1 / This.DistanceTravelled.as<float>() : 0;
	}
The mouse are moving slower than the original code, but the amount of cheese that collected are similar
Case 5 10/distance  
virtual float GetFitness()const
	{
	return This.cheesesFound > 0 ? 10 / This.DistanceTravelled.as<float>() : 0;
	}
The mouse are moving slower than case4 and original code, the accuracy of cheese collecting are similar, but due to the low speed, the amount of cheese are not as much as original code.


Crossover probability:  It is the rate of the chromosomes that used in reproduction, if the number was set at 0, that means the next generation will be same as last generation. In this mice code, it is used to determine the degree of genetic.
Mutation probability: It is the probability of random selection, it can make some random alteration for the genes and increased the diversity of the mice group, there will be no evolutionary novelty without it.
Selection method: It is the method to chose genomes from the mice group, it will impact the process of evolution
Ranking selection pressure:
Time steps : It determined the amount of steps in each generation.

4

I think there are four factors to judge the mouse performance. Evolution speed, fitness stability , cheese amount and the power usage per cheese.

Evolution speed:  The amount of generation it takes for the fitness become stable. From the figure from question1, we can see that the entire evolutionary process will have a rising period then gradually stabilize. I think the faster the stable status is reached, the better the performance.

Fitness stability :  After the plot is stabled, the difference between the highest average fitness and the lowest average fitness, the smaller difference means the evolution is more stable.

Power usage per cheese：The power that the mouse need to find one cheese,  it was opposite with the origin fitness function, it uses the power divided by cheese amount, the lower power usage per cheese, the better the accuracy and efficiency, which means the better performance. The code of fitness function is shown below.
virtual float GetFitness()const
	{
		return This.cheesesFound > 0? This.DistanceTravelled.as<float>() /static_cast<float>(This.cheesesFound) : 0;
	}

Cheese amount :  The amount of cheese that the mouse collected in one generation, more cheese means better performance. The fitness function is shown below. 
virtual float GetFitness()const
	{
	return This.cheesesFound > 0 ? static_cast<float>(This.cheesesFound)  : 0;
	}

改完代码跑一下
Sensor

5 
Collective behaviour is a kind of social behaviour, it include a group of similar individuals. We can solve some engineering problems by study on some animal’s collective behaviour patter.  It aims to study about the interactions among individuals in the group. In genetic algorithm, a random generated population is usually be seeded,  and evolute by crossover and mutation.
In the experiment, the whole mouse group are searching for cheese, every individual mice is acting the same behaviour, and all these mouse behaviour are interacted, this constitute a collective behaviour. Also during the process of searching cheese, we can always see some mouse chasing for the same cheese, and sometimes  bump to each other, that means their behaviour are  unorganized, but the final  goal of all the mouse are same, that is an evidence of collective behaviour.
