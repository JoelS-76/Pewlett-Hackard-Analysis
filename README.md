# Pewlett-Hackard-Analysis
The purpose of this analysis is to find the number of employees eligible for retirement and the positions likely to open up. Then we can begin to strategize about how to promote from within to maintain continuity in transition.

## The figures from initial breakdown of the data
-90,398 employees nearing retirement

-majority from Senior Staff and Senior Engineers

![image](https://user-images.githubusercontent.com/84299125/127862963-5d5e55ee-f9c0-48c5-bd05-1b9754bf85ec.png)


-Production and Development Departments stand to lose the highest number, followed by Sales

![image](https://user-images.githubusercontent.com/84299125/127863154-379d2ea2-438a-4cca-a613-149d0a58c2e3.png)


-1,550 employees are eligible for the mentorship program

![image](https://user-images.githubusercontent.com/84299125/127863398-b16fc936-4d3e-413a-900b-fefb2ee1d806.png)


Pewlett-Hackard needs to prepare for the retirement of a large number of employees. We need to promote from within to establish a leadership group for all of the new hires we will need to make. The suggestion of a mentorship program from the Sales and Development departments is excellent, but we should determine how best to apply it to the entire company, not just those two departments.

### Two Additional Observations
The first thing Pewlett-Hackard needs to do is fix the payroll data. We have tens of thousands of employees making exactly $40,000 a year, which appears to be starting pay. This indicates that a lot of people are in line for raises or promotions. But then there are a number of other salaries in the database going up by absurdly small dollar amounts. It is nearly impossible that this is accurate data. Why would anyone have a salary of $40,002? If Pewlett-Hackard doesn't know how much their current employees are being paid, then they will be in no position to hire new employees.

Also, the employee roster reveals that we have 9 managers, but only 2 current managers are actually assigned to a department. One department has not had a manager assigned sine 1988! Every department needs a manager, especially with a huge influx of new hires. Assign departments to the remaining 7 managers.

![image](https://user-images.githubusercontent.com/84299125/127864423-92f0eab7-7c0a-4709-ae91-32d8abeab0c8.png)


## Mentorship Program
With over 90,000 positions needing to be filled in the near future, Pewlett-Hackard needs to focus on the most immediate needs first. The mentorship program should be tailored to respond to that. There are 1,550 total employees eligible. A quick filter on the spreadsheet of retirees reveals that of the 90,398 retiring employees, 62,172 of them are in leadership positions. That is a huge number to start with in the development of a new program, and obviously we don't need 62,000 mentors for less than 2,000 mentees. In addition, each department has more people retiring than the total number of elegible mentees. It seems safe to say that there are plenty of qualified potential mentors. In fact, we need to narrow the field in order to develop the program.

### Focus on the first wave and the departments with the largest loss
Since we already know that Production, Development, and Sales will lose the most people, we would be wise to focus on those departments. In addition, we can look at people who are Senior Staff and Senior Engineers, since those are the largest groups of people retiring by title.

90,398 people are not going to retire all at once. I narrowed the field to those likely to be in the first wave, the employees born in 1952. Of those people, there are 4,531 Senior Staff and Senior Engineers in the three departments listed above (Production, Development, and Sales). This is shown in this file: https://github.com/JoelS-76/Pewlett-Hackard-Analysis/blob/main/Additional%20tables%20for%20PH/mentor_focus.csv. Senior Engineers are primarily in Production and Development, and Senior Staff is primarily in Sales. Those three departments also have 1,063 employees eligible for mentorship, as shown in https://github.com/JoelS-76/Pewlett-Hackard-Analysis/blob/main/Additional%20tables%20for%20PH/membership_focus.csv. These two files are found in the folder marked "Additional tables for PH." We should poll these groups to gauge their interest in the program and hopefully pilot the program there. We can then evaluate its effectiveness and refine it to apply company-wide. This should greatly aid our efforts in this massive hiring initiative.


