SELECT [d].[id], [d].[CountryId], [d].[name], [g].[id], [g].[description], [g].[developerId], [g].[GenreId], [g].[name], [g].[price], [g].[StatusId]
FROM [Developers] AS [d]
LEFT JOIN [Games] AS [g] ON [d].[id] = [g].[developerId]
WHERE (
    SELECT COUNT(*)
    FROM [Games] AS [g0]
    WHERE [d].[id] = [g0].[developerId]) > 3
ORDER BY [d].[id], [g].[id]