let count = 0;

const runningJob = () => {
  count += 1;
  console.log(`Job number ${count} running at ${new Date()}`);
};

runningJob();
