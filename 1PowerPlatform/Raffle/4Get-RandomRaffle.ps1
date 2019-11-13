$2Eval = "C:\fleitasarts\pbifest2019\1PowerPlatform\Raffle\2Eval.txt"
$Sorted = "C:\fleitasarts\pbifest2019\1PowerPlatform\Raffle\unique-sorted.txt"
$Winners = "C:\fleitasarts\pbifest2019\1PowerPlatform\Raffle\Winners.txt"

[System.IO.File]::WriteAllText(
    $2Eval,
    ([System.IO.File]::ReadAllText($2Eval) -replace " ", "")
)

$Evals = $(foreach ($line in Get-Content $2Eval) {$line.tolower().split(" ")}) | sort | Get-Unique
echo $Evals > $Sorted
Get-Random -Input $Evals -Count 2 > $Winners
