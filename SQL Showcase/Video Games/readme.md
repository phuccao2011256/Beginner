In this project, I write SQL Server queries to clean and get information from video games database. 
My purpose is less on full analysis but more on showing how I write queries for different questions.

[video games](#game_publisher)

# Video Games Database
This database stores information about video games that have had the most sales of all time. It captures video game sales in North America, Europe, Japan, and other regions grouped as “Other”. It has games from various platforms and publishers

The original data was a single table on Kaggle but has been arranged into a small database, which can be accessed [here](https://github.com/bbrumm/databasestar/tree/main/sample_databases/sample_db_videogames). There are about 11,000 games, 12 genres, 31 platforms, 577 publishers, and 4 regions in this dataset.

Below is the ERD for this data:
![image](https://user-images.githubusercontent.com/58874718/200242708-0f11f55b-4f8b-4e73-a9b7-4f8306d1c55a.png)

# Table Explanations
### Genre
Short list of game genres, such as Action or Racing.

### Game
A list of all of the games in the database. Contains title and genre_id to link to the genre table. There is no concept of a series in this data

### Publisher
Studios/companies that make the game

### Game_Publisher
This is a joining table that defines the games and their publishers, because in the source data, a game can have many publishers.

### Platform
A list of the different gaming platforms: PC, XBox, PS,...

### Game_Platform
This table links the games, publishers, and the platform. It also includes release year since games can be release by different publishers on different platforms in different years.

### Region
List of 4 regions: North America, Europe, Japan, and Others.

### Region_Sales
All sales made for a unique combination of game, publisher and platform (aka game_platform_id) in each region. **The number is in million**

# Database Notes
- The sales are captured overall as at a point in time and are not broken down by years.
- The data includes games released in 2016 and a couple of games released in 2017.
