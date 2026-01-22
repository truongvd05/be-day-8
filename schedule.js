import "dotenv/config";
import { CronJob } from "cron";
import main from "#services/drive.service.js";
import cleanupExpiredTokens from "#schedules/cleanupExpiredTokens.js";

const job = new CronJob(
    "0 0 3 * * *", // cronTime
    main, // onTick
    null, // onComplete
    true, // start
    "UTC", // timeZone
);

const job1 = new CronJob(
    "0 0 1 * * *", // cronTime
    cleanupExpiredTokens, // onTick
    null, // onComplete
    true, // start
    "UTC", // timeZone
);
