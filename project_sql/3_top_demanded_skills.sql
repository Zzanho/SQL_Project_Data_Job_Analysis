/*
Question: What are the most in-demand skills for data analysts?
- Join job postings to inner join table similar to query 2
- Identify the top 5 in-demand skills for a data analyst.
- Focus on all job postings.
- Why? Retrieces the top 5 skills with the highest demand in the job market.
    providing insights into the most valuable skills for job seekers.
*/


SELECT 
    skills,
    COUNT(skills_job_dim.job_id) AS demand_count
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE 
    job_title_short = 'Data Analyst'
GROUP BY 
    skills
ORDER BY 
    demand_count DESC
LIMIT 5




/*

Here are some insights from the given data about in-demand data analyst skills:

1. **SQL** leads the list with a demand count of **92,628**, showing its dominance as the most sought-after skill for data analysts. This reflects the essential need for database management and querying capabilities in almost every data-related role.

2. **Excel** ranks second with a demand count of **67,031**, highlighting its continued importance for data organization, analysis, and reporting. Despite being an older tool, its versatility keeps it in high demand.

3. **Python** comes in third with **57,326** mentions, emphasizing its growing popularity due to its ability to handle complex data analysis, automation, and machine learning tasks.

4. **Tableau** has a demand count of **46,554**, showcasing the importance of data visualization and storytelling. Its ability to translate raw data into actionable insights makes it a key skill.

5. **Power BI** follows closely with **39,468** mentions, further underlining the significance of business intelligence tools in helping organizations make data-driven decisions.

### Key Takeaways:
- **Technical skills dominate:** SQL, Python, and Excel remain core technical requirements, reinforcing the necessity for strong foundational and programming expertise.
- **Visualization tools are critical:** The high demand for Tableau and Power BI highlights the growing need for data analysts to present insights in an accessible and visually appealing manner.
- **Versatility matters:** The combination of querying, analysis, and visualization skills positions data analysts to be impactful in diverse industries and roles.

[
  {
    "skills": "sql",
    "demand_count": "92628"
  },
  {
    "skills": "excel",
    "demand_count": "67031"
  },
  {
    "skills": "python",
    "demand_count": "57326"
  },
  {
    "skills": "tableau",
    "demand_count": "46554"
  },
  {
    "skills": "power bi",
    "demand_count": "39468"
  }
]

*/



