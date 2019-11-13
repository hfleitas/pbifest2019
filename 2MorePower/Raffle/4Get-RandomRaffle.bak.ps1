$Evals = $(foreach ($line in Get-Content "C:\fleitasarts\pbifest2019\2MorePower\Raffle\2Eval.txt") {$line.tolower().split(" ")}) | sort | Get-Unique
echo $Evals > "C:\fleitasarts\pbifest2019\2MorePower\Raffle\unique-sorted.txt"
Get-Random -Input $Evals -Count 2 > "C:\fleitasarts\pbifest2019\2MorePower\Raffle\Winners.txt"
