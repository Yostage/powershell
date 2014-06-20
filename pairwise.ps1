
$list = ("first", "second", "third")
function pairwise-v1($list)
{
    foreach ($first in $list)
    {
        foreach ($second in $list)
        {
            if ($first -lt $second)
            {
                write-output "[$first, $second]"
            }
        }
    }
}
    

function pairwise-v2
{
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory=$True,ValueFromPipeline=$True,ValueFromPipelinebyPropertyName=$True)] $item
    )
    
    Begin
    {
        $list = @()
    }
    
    PROCESS {        
        $list += $_
    }

    End {
        pairwise-v1 $list
    }
}


#pairwise-v1 $list
$list | pairwise-v2