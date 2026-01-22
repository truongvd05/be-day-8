import ValidationError from "./ValidationError.js";

const validateChangePassword = ({ password, newPassword, confirmPassword }) => {
    if (!password || password.trim().length === 0) {
        throw new ValidationError("Missing password fields");
    }
    if (![password, newPassword, confirmPassword].every(Boolean)) {
        throw new ValidationError("Missing password fields");
    }

    if (newPassword.trim().length < 6) {
        throw new ValidationError("Mật khẩu phải ít nhất 6 ký tự");
    }

    if (newPassword !== confirmPassword) {
        throw new ValidationError("Mật khẩu mới phải giống nhau");
    }
};

export default validateChangePassword;
