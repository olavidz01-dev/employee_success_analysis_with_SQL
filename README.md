# Employee Success Analysis with SQL - NextGen Corp
<p align="center">
  <img src="assets/img/banner.png" width="1000" />
</p>

---

## Business Overview
NextGen Corp is a fast-growing technology company focused on delivering innovative hardware and software solutions in a highly competitive market. The organization has established a strong reputation for attracting high-caliber talent and cultivating a collaborative, performance-driven work environment that supports innovation, productivity, and sustainable growth.

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
  <img src="assets/img/datmodel.png" width="1000" />
</p>

---

## Methodology
1. Data cleaning & preparation  
2. Exploratory analysis (EDA)  
3. KPI creation  
4. Insight generation  
5. Executive recommendations  

---

## Key Findings
### 1) Category Revenue Concentration
**Insight:** A small number of categories contribute the majority of revenue.  
**So what:** Focus promotions and stock optimization on high-impact categories.

### 2) Top Products Drive Disproportionate Sales
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
