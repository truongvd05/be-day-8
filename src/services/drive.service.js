import backupDB from "#schedules/backupDB.js";
import { google } from "googleapis";
import fs from "fs";
import path from "path";
import emailService from "./email.service.js";

const oauth2Client = new google.auth.OAuth2(
    process.env.GG_CLIENT_ID,
    process.env.GG_CLIENT_SECRET,
);

oauth2Client.setCredentials({
    refresh_token: process.env.GG_REFRESH_TOKEN,
});

const drive = google.drive({
    version: "v3",
    auth: oauth2Client,
});

async function main() {
    const outputFile = await backupDB();
    const fileName = path.basename(outputFile);

    const res = await drive.files.create({
        requestBody: {
            name: fileName,
        },
        media: {
            mimeType: "text/plain",
            body: fs.createReadStream(outputFile),
        },
    });
    emailService.backupDb();
    console.log(res.data);
}

export default main;
