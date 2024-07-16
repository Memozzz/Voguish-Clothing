package ph.pup.itech.hrmgr.model;

public class userModel {

    public int userId;
    private String passWord;
    private String firstName;
    private String middleName;
    private String lastName;
    private String completeAddress;
    private String birthday;
    private String cellNumber;
    private String userRole;

    public userModel() {
    }

    public userModel(
            int userId,
            String passWord,
            String firstName,
            String middleName,
            String lastName,
            String completeAddress,
            String birthday,
            String cellNumber,
            String userRole) {
        this.userId = userId;
        this.passWord = passWord;
        this.firstName = firstName;
        this.middleName = middleName;
        this.lastName = lastName;
        this.completeAddress = completeAddress;
        this.birthday = birthday;
        this.cellNumber = cellNumber;
        this.userRole = userRole;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getPassword() {
        return passWord;
    }

    public void setPassword(String passWord) {
        this.passWord = passWord;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getMiddleName() {
        return middleName;
    }

    public void setMiddleName(String middleName) {
        this.middleName = middleName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getCompleteAddress() {
        return completeAddress;
    }

    public void setCompleteAddress(String completeAddress) {
        this.completeAddress = completeAddress;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getCellNumber() {
        return cellNumber;
    }

    public void setCellNumber(String cellNumber) {
        this.cellNumber = cellNumber;
    }

    public String getUserRole() {
        return userRole;
    }

    public void setUserRole(String userRole) {
        this.userRole = userRole;
    }
}
