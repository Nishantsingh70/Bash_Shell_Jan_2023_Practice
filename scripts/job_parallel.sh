echo "Start all jobs.."

/root/shell_ws/job1.sh &

/root/shell_ws/job2.sh &

wait

echo "All jobs completed.."
