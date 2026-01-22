import revokedTokenModel from "#models/revokedToken.model.js";

async function cleanupExpiredTokens() {
    try {
        await revokedTokenModel.deleteExpired();
        console.log("delete token");
    } catch (err) {
        console.log(err);
    }
}

export default cleanupExpiredTokens;
