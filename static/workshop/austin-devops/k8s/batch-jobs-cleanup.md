## Clean up our Jobs from earlier

Remember the `Job` and `Cronjob` we created earlier? Now would be a great time to clean them up.

.exercise[

- Delete the job:
  ```bash
  kubectl delete job flipcloin
  ```

- Delete the cronjob:
  ```bash
  kubectl delete cronjob every3mins
  ```
]
