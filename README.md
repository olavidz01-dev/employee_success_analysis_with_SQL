# Employee Success Analysis with SQL - NextGen Corp
<p align="center">
  <img src="assets/img/banner.png" width="1000" />
</p>

---

## Business Overview
**NextGen Corp** is a fast-growing technology company focused on delivering innovative hardware and software solutions in a highly competitive market. The organization has established a strong reputation for attracting high-caliber talent and cultivating a collaborative, performance-driven work environment that supports innovation, productivity, and sustainable growth.

As the company continues to scale, its workforce remains a critical strategic asset. NextGen Corp prioritizes employee satisfaction, fair and competitive compensation, and consistent performance excellence to retain top talent and support long-term business objectives in a rapidly evolving technology landscape.

---

## Business Problem 
Despite its continued growth and strong talent base, NextGen Corp is beginning to experience human-resource challenges that pose potential risks to long-term organizational performance. Recent internal indicators point to emerging issues across three key areas:
1. Employee Turnover

Variability in employee retention suggests possible dissatisfaction, increased market competition for talent, or internal operational inefficiencies. Without a clear understanding of the underlying drivers and trends, rising turnover may lead to escalating recruitment and onboarding costs, knowledge loss, and productivity gaps.

2. Performance Variability

Employee performance levels vary significantly across departments, limiting management’s ability to effectively allocate resources, plan promotions, and identify high-performing or underperforming teams. This lack of visibility reduces confidence in performance-based decision-making.

3. Salary Disparities

Concerns have emerged regarding compensation equity among employees in comparable roles. Misalignment between pay, performance, and responsibilities can contribute to reduced morale, disengagement, and increased attrition if left unaddressed.


## Project Objectives
To ensure continued success, NextGen Corp’s HR department must adopt a structured, analytical approach to workforce management. The organization needs reliable insights to:
- Identify trends and patterns in employee retention and turnover

Understand which departments face the highest turnover and why
- Track and evaluate performance consistently across teams

Highlight hhigh-performing employees, address low performance, and maintain productivity standards
- Assess the relationship between salary and performance

Ensure fairness, eliminate unjustified pay gaps, and support employee satisfaction

---

## Data Dictionary
- Employees Table: Contains essential employee details like name, job title, hire date, salary, performance score, attendance rate, and department affiliation
- Departments Table: Contains the list of departments within NextGen Corp. (e.g., Engineering, Sales, HR, Marketing).
- Performance Table: Tracks monthly performance scores of employees, allowing you to analyze performance trends over time.
- Attendance Table: Tracks attendance records for employees, including whether they were present or absent.
- Turnover Table: Contains data on employees who left the company, including the reason for leaving.
- Salaries Table: Provides salary data, including historical salary changes for each employee.
<p align="center">
  <img src="assets/img/datamodel.png" width="1000" />
</p>

---

## Approach & Methodology
- Postgres SQL
- PgAdmin
- Queries: Select, Order By, Not In, Limit, Where, Left Join, Count, Distinct, Group by, Round, To_char, Sum, Average
- Data Analysis to identify trends and business recommendations.

---

## Employee Retention Analysis
### 1) Top 5 longest-serving employee
**Analysis & Insight:** 
- The **earliest hire date** in the company is **June 30, 2015**, meaning the longest-serving employee has been with the organization for over 9 years.
- All five longest-tenured employees were hired between **2015 and 2016**, highlighting a period of exceptionally strong retention.
- **4 out of the 5** longest-serving employees work in the **Sales department**, indicating that Sales is the most stable team in the organization.
- This suggests that the hiring practices, leadership, or incentives used during this period, particularly within Sales, were highly effective and could be replicated to improve retention across newer teams.
<p align="center">
  <img src="assets/img/Q1.png" width="1000" />
</p>
  
### 2) Rate of turnover per department
**Analysis & Insight:**
- **Engineering** is experiencing severe retention challenges with a turnover rate of **150%**, meaning more employees left than the department currently employs, a clear indicator of serious issues related to workload, leadership, or job satisfaction.
- **Marketing (64%)** and **HR (54%)** also show elevated turnover, suggesting instability and potential disengagement.
- In contrast, **Sales** has a turnover rate of just **13%**, making it the most stable department and a strong benchmark for effective people management and retention practices.
<p align="center">
  <img src="assets/img/Q2.png" width="1000" />
</p>

### 3) Top 3 employees at risk of leaving base on their performance

**Analysis & Insight:**
- **Grace Wilson** has the lowest average performance score at **3.43**, followed by **Jane Wilson (3.58)** and **Eve Davis (3.65)**, all below the team average.
- These lower scores indicate potential challenges with role fit, workload, or support, making these employees more vulnerable to disengagement and potential attrition.
- Without targeted intervention, their performance gaps could translate into increased turnover risk and lost productivity.
<p align="center">
  <img src="assets/img/Q33.png" width="1000" />
</p>

### 4) Top reasons why employees are leaving 
**Analysis & Insight:**
- The most common reason for employee departures is **personal reasons (11 exits)**, indicating a need for more flexible working arrangements and stronger employee support.
- **7** employees left for other **job opportunities**, suggesting competitive pressures related to pay, engagement, or career development.
- **Career growth limitations (5 exits)** and **retirements (5 exits)** also contribute meaningfully to turnover, highlighting gaps in progression planning and succession management.
<p align="center">
  <img src="assets/img/Q4.png" width="1000" />
</p>

### 5) Number of employees that left 
**Analysis & Insight:**
- A total of **28 employee separations** indicates a meaningful level of turnover that is likely impacting productivity, team continuity, and recruitment costs.
- When combined with department-level data, this volume of exits highlights particularly strong retention challenges within **Engineering, Marketing, and HR,** reinforcing the need for targeted engagement and retention strategies.
<p align="center">
  <img src="assets/img/Q5.png" width="1000" />
</p>

---

## Employee Performance Analysis
### 1) Top 5 longest-serving employee
**Analysis & Insight:** 
- The **earliest hire date** in the company is **June 30, 2015**, meaning the longest-serving employee has been with the organization for over 9 years.
- All five longest-tenured employees were hired between **2015 and 2016**, highlighting a period of exceptionally strong retention.
- **4 out of the 5** longest-serving employees work in the **Sales department**, indicating that Sales is the most stable team in the organization.
- This suggests that the hiring practices, leadership, or incentives used during this period, particularly within Sales, were highly effective and could be replicated to improve retention across newer teams.
<p align="center">
  <img src="assets/img/Q1.png" width="1000" />
</p>
  
### 2) Rate of turnover per department
**Analysis & Insight:**
- **Engineering** is experiencing severe retention challenges with a turnover rate of **150%**, meaning more employees left than the department currently employs, a clear indicator of serious issues related to workload, leadership, or job satisfaction.
- **Marketing (64%)** and **HR (54%)** also show elevated turnover, suggesting instability and potential disengagement.
- In contrast, **Sales** has a turnover rate of just **13%**, making it the most stable department and a strong benchmark for effective people management and retention practices.
<p align="center">
  <img src="assets/img/Q2.png" width="1000" />
</p>

### 3) Top 3 employees at risk of leaving base on their performance

**Analysis & Insight:**
- **Grace Wilson** has the lowest average performance score at **3.43**, followed by **Jane Wilson (3.58)** and **Eve Davis (3.65)**, all below the team average.
- These lower scores indicate potential challenges with role fit, workload, or support, making these employees more vulnerable to disengagement and potential attrition.
- Without targeted intervention, their performance gaps could translate into increased turnover risk and lost productivity.
<p align="center">
  <img src="assets/img/Q33.png" width="1000" />
</p>

### 4) Top reasons why employees are leaving 
**Analysis & Insight:**
- The most common reason for employee departures is **personal reasons (11 exits)**, indicating a need for more flexible working arrangements and stronger employee support.
- **7** employees left for other **job opportunities**, suggesting competitive pressures related to pay, engagement, or career development.
- **Career growth limitations (5 exits)** and **retirements (5 exits)** also contribute meaningfully to turnover, highlighting gaps in progression planning and succession management.
<p align="center">
  <img src="assets/img/Q4.png" width="1000" />
</p>


**Insight:** Best-sellers account for a large portion of revenue.  
**So what:** Protect availability and consider bundles or upsells.

---

## Visuals
### Revenue by Category
<img src="assets/img/revenuebycategorychart.png" width="900" />

### Product Revenue Contribution
<img src="assets/img/productbyrevenuechart.png" width="900" />

---

## Recommendations (Executive-ready)
- ✅ Prioritize inventory and promotions for top categories to reduce stockouts
- ✅ Implement product bundling for best sellers to increase basket size
- ✅ Align marketing spend with seasonal peaks and demand patterns

---

## Tech Stack
- **Tools:** Excel, SQL, Python (Pandas), Power BI/Tableau (optional)
- **Libraries:** Pandas, NumPy, Matplotlib

---

## How to Run (Optional)
```bash
pip install -r requirements.txt
