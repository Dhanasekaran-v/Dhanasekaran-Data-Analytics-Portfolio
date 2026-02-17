# 🎬 Advanced SQL Project – IMDB Dataset Analysis

---

## 📌 Project Overview

This project focuses on analyzing a simplified IMDB database using advanced SQL queries.  

The objective was to extract meaningful insights about movies, genres, ratings, actors, directors, and production companies by applying SQL concepts such as Joins, Grouping, Filtering, and Aggregations.

The project helped strengthen query-writing skills and real-world database analysis techniques.

---

## 🎯 Objectives

- Perform advanced SQL operations on relational datasets
- Use Joins, Group By, Having, and Aggregate Functions
- Apply filtering using WHERE, LIKE, IN, and LIMIT
- Sort and structure results using ORDER BY
- Derive meaningful insights from movie data

---

## 🛠 Tools & SQL Concepts Used

### 💻 Tool Used
- MySQL

### 🧠 SQL Functions & Concepts
- INNER JOIN
- GROUP BY
- HAVING
- COUNT()
- AVG()
- SUM()
- WHERE
- LIKE
- IN
- ORDER BY (ASC / DESC)
- LIMIT

---

## 📂 Dataset Overview

The IMDB dataset consists of multiple relational tables:

### 🎥 Movies Table
- Title
- Release Year
- Duration
- Country
- Income
- Language
- Production Company

### 🎭 Genres Table
- Action
- Drama
- Sci-Fi
- Romance
- Crime
- Fantasy
- And more

### 🎬 Directors Mapping
- Director ID
- Movie ID

### 🎭 Role Mapping
- Actor/Actress ID
- Movie ID

### 👤 Names Table
- Actor/Director Name
- Height
- Date of Birth
- Known For

### ⭐ Ratings Table
- Total Votes
- Average Rating
- Median Rating

---

## 🔎 Key Business Questions Answered

### 📅 1. How Many Movies Were Released Per Year?

- 2017 → 3052 movies
- 2018 → 2944 movies
- 2019 → 2001 movies

2017 had the highest number of releases.

---

### ⭐ 2. Top 10 Movies Based on Average Rating

Identified highest-rated movies based on average ratings.

Example:
- Kirket
- Love in Kilnerry
- The Brighton Miracle
- Android Kunjappan Version 5.25
- Safe
- Impossible
- And others

---

### 🎭 3. Average Movie Duration by Genre

- Action → 112.88 mins
- Romance → 109.53 mins
- Crime → 107.05 mins
- Drama → 106.77 mins
- Fantasy → 105.14 mins

Action movies had the longest average duration.

---

### 🎬 4. Actors with More Than 3 Low-Rated Movies (Rating < 5)

Examples:
- Tom Sizemore
- Eric Roberts
- Michael Madsen
- Sonakshi Sinha
- Dolph Lundgren

---

### 📊 5. Grouping Movies Based on Median Ratings

Movies were grouped based on median rating and sorted in descending order to identify highly rated films.

---

### 🎥 6. Movies from Each Genre with “The” in Title (Rating ≥ 8)

Examples:
- The Brighton Miracle (9.5)
- The Colour of Darkness (9.1)
- The Blue Elephant (8.8)
- The Irishman (8.7)
- The Gambinos (8.4)

---

## 📈 Key Insights

### 🎬 Movie Insights
- 2017 recorded the highest movie releases.
- January, March, September, and October had more releases.

### 🎭 Genre Insights
- Drama had the highest number of movies.
- Action movies had the longest duration.

### ⭐ Rating Insights
- “The Brighton Miracle” had one of the highest ratings (9.5).
- Certain movies consistently ranked high across metrics.

### 👤 Actor & Director Insights
- Mammootty and Mohanlal were among top-rated actors.
- Andrew Jones and A.L. Vijay directed more than 4 movies.

### 🌍 Language & Production Insights
- English is the most common language worldwide.
- Marvel Studios movies received the highest votes.

---

## 📊 Business Value

This analysis helps:

- Identify popular genres and production trends
- Understand high-performing actors and directors
- Discover patterns in ratings and audience preferences
- Support data-driven decisions in movie production

---

## 🚀 Conclusion

The IMDB dataset was successfully analyzed using advanced SQL queries.

Key achievements:

✔ Applied complex joins across multiple tables  
✔ Used aggregate functions for statistical insights  
✔ Performed filtering and sorting for structured reporting  
✔ Derived meaningful movie industry insights  

This project demonstrates strong SQL fundamentals and real-world relational database analysis skills.

---

