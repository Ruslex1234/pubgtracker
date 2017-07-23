#figuring out the proper command for this script
#at this point I managed to get the proper query to get the stats for "Solo" and "Aggregate" region
curl -H 'TRN-Api-Key: b4efed97-ffa8-45ee-a16e-6e8d7ed36f76' 'https://pubgtracker.com/api/profile/pc/Autumn_KR/' | jq '.Stats[]' | jq '. | select ((.Region == "agg") and (.Match == "solo"))'
#Still need to do
#----Kill/Death Ratio
#----Skill Rating
#----Win %

#Things to consider at this for structured functions
#----Input two players is the end goal with an option to output the data comparison raw or json?
#----For further consideration maybe come up with a statistic that filters for stats and/or region?
#----Function to grab specific stat
#----Function to output a specific style
