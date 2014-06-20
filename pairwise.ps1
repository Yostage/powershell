$list = ("first", "second", "third")
function pairwise($list)
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
pairwise $list
