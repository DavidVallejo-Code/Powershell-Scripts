#use start-job to run jobs in the background
#use get-job to view the running job
#use receive-job to view the jobs results

#three ways to start a job
start-job { 1..5 | foreach { $_ ; Start-Sleep 5 } }


#invoke command asjob
Invoke-Command -ComputerName localhost -command {"hello"} -AsJob 