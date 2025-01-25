/*
Questions to Answer:
1. What are the top-paying jobs for my role?
2. What are the skills required for these top-paying roles?
3. What are the most in-demand skills for my role?
4. What are the top skills based on salary for my role?
5. What are the most optimal skills to learn?
    a. Optimal: High Demand AND High Paying
    
*/


/*
Question 1: What are the top-paying data analyst jobs?
    -Identify the top 10 highest-paying Data Analyst roles that are available remotely.
    -Focuses on job postings with specified salaries (remove nulls).
    -Why? Highlight the top-paying opportunities for Data Analysts, offering insights into empoloyment as a Data Analyst
*/


SELECT 
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date,
    name as company_name
FROM 
    job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE
    job_location = 'Anywhere' 
    AND job_title_short = 'Data Analyst'
    AND salary_year_avg IS NOT NULL
ORDER BY salary_year_avg DESC
LIMIT 10



/*
Here’s an analysis of the top 10 remote data analyst roles based on the provided information:

### Insights:

1. **Highest-Paying Role:**
   The role of "Data Analyst" at Mantys offers the highest average annual salary of $650,000, far exceeding the others. This could indicate a unique position with specialized skills or a leadership role misclassified under the "Data Analyst" title.

2. **Leadership Roles Dominate High Salaries:**
   Roles like "Director of Analytics" at Meta ($336,500) and "Associate Director- Data Insights" at AT&T ($255,829.5) highlight that leadership and seniority significantly impact pay.

3. **Principal and Specialized Roles:**
   Positions such as "Principal Data Analyst" at SmartAsset ($205,000–$186,000) and "Principal Data Analyst, AV Performance Analysis" at Motional ($189,000) suggest that specialization and technical expertise in areas like AV performance also yield higher compensation.

4. **Recent Job Postings:**
   The most recent posting is for the "Director, Data Analyst - HYBRID" at Inclusively (December 7, 2023). Timely postings might reflect active hiring needs and more opportunities for applicants.

5. **Average Salary Range:**
   Excluding the outlier (Mantys), the salaries range between $184,000 and $336,500, with an average around $243,406, indicating that remote data analyst roles are highly lucrative, particularly for experienced professionals.

6. **Company Diversity:**
   Renowned companies like Meta, AT&T, and Pinterest are included, reflecting the demand for data analysts across diverse industries like social media, telecommunications, and marketing.

7. **Job Accessibility:**
   All roles are fully remote, indicating increasing flexibility and opportunities in the data analytics field without location constraints.

8. **Full-Time Availability:**
   All positions are full-time, implying the stability of these roles and their alignment with long-term career prospects.

### Recommendations:
- **For Senior Analysts or Aspiring Leaders:** Focus on positions like Director or Principal roles as they offer higher pay and leadership opportunities.
- **For Entry/Mid-Level Analysts:** The role at Mantys is a standout opportunity, potentially offering unparalleled pay, although further research is needed to understand its unique requirements.
- **Target Industry and Expertise:** Choose industries like social media (Pinterest), healthcare (Uclahealthcareers), or autonomous vehicles (Motional) to align with your expertise and interests.
- **Apply Quickly:** Focus on recently posted roles like Inclusively (December 2023) or Pinterest (December 2023) for better chances of securing interviews.





[
  {
    "job_id": 226942,
    "job_title": "Data Analyst",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "650000.0",
    "job_posted_date": "2023-02-20 15:13:33",
    "company_name": "Mantys"
  },
  {
    "job_id": 547382,
    "job_title": "Director of Analytics",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "336500.0",
    "job_posted_date": "2023-08-23 12:04:42",
    "company_name": "Meta"
  },
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "255829.5",
    "job_posted_date": "2023-06-18 16:03:12",
    "company_name": "AT&T"
  },
  {
    "job_id": 99305,
    "job_title": "Data Analyst, Marketing",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "232423.0",
    "job_posted_date": "2023-12-05 20:00:40",
    "company_name": "Pinterest Job Advertisements"
  },
  {
    "job_id": 1021647,
    "job_title": "Data Analyst (Hybrid/Remote)",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "217000.0",
    "job_posted_date": "2023-01-17 00:17:23",
    "company_name": "Uclahealthcareers"
  },
  {
    "job_id": 168310,
    "job_title": "Principal Data Analyst (Remote)",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "205000.0",
    "job_posted_date": "2023-08-09 11:00:01",
    "company_name": "SmartAsset"
  },
  {
    "job_id": 731368,
    "job_title": "Director, Data Analyst - HYBRID",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "189309.0",
    "job_posted_date": "2023-12-07 15:00:13",
    "company_name": "Inclusively"
  },
  {
    "job_id": 310660,
    "job_title": "Principal Data Analyst, AV Performance Analysis",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "189000.0",
    "job_posted_date": "2023-01-05 00:00:25",
    "company_name": "Motional"
  },
  {
    "job_id": 1749593,
    "job_title": "Principal Data Analyst",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "186000.0",
    "job_posted_date": "2023-07-11 16:00:05",
    "company_name": "SmartAsset"
  },
  {
    "job_id": 387860,
    "job_title": "ERM Data Analyst",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "184000.0",
    "job_posted_date": "2023-06-09 08:01:04",
    "company_name": "Get It Recruit - Information Technology"
  }
]

*/



