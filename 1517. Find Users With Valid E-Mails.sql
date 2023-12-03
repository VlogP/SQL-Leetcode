/* Write your T-SQL query statement below */
Select U.user_id,
U.name,
U.mail
From Users U
Where U.mail Like '[a-zA-Z]%@leetcode.com'
And U.mail Not Like '%[^a-zA-Z0-9_.-]%@leetcode.com'