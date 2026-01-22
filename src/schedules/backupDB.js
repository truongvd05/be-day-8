import { spawn } from "child_process";
import fs from "fs";
function backupDB() {
    return new Promise((resolve, reject) => {
        const date = new Date().toISOString().split("T")[0];
        const outputFile = `./backup/node-day-8-${date}.sql`;
        const outputStream = fs.createWriteStream(outputFile);

        const mysqldump = spawn("mysqldump", [
            `-u${process.env.DB_USER}`,
            `-p${process.env.DB_PASS}`,
            `-P${process.env.DB_PORT}`,
            `${process.env.DB_NAME}`,
        ]);

        mysqldump.stdout.pipe(outputStream);

        mysqldump.on("error", (err) => {
            console.log(err);
            outputStream.end();
        });
        mysqldump.on("close", (code) => {
            if (code === 0) {
                console.log("Backup success:", outputFile);
                resolve(outputFile);
            } else {
                fs.unlinkSync(outputFile);
                console.error("Backup failed with code:", code);
                reject(new Error(`Backup failed: ${code}`));
            }
            outputStream.end();
        });
    });
}

export default backupDB;
