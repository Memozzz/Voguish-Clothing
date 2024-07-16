package ph.pup.itech.hrmgr.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import ph.pup.itech.hrmgr.model.userModel;

public class CustomerDao {

public ArrayList<userModel> getUserList() {
        ArrayList<userModel> userList = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "select * from userstable";
        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                userModel users = new userModel();
                users.setUserId(rs.getInt("userId"));
                users.setPassword(rs.getString("passWord"));
                users.setFirstName(rs.getString("firstName"));
                users.setMiddleName(rs.getString("middleName"));
                users.setLastName(rs.getString("lastName"));
                users.setCompleteAddress(rs.getString("completeAddress"));
                users.setBirthday(rs.getString("birthday"));
                users.setCellNumber(rs.getString("cellNumber"));
                users.setUserRole(rs.getString("userRole"));
                userList.add(users);
            }
            conn.close();
        } catch (SQLException e) {
            System.out.println("getUserList Error: " + e);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    //ignore
                }
            }

        }
        return userList;
    }

    public userModel getUserDetails(int userId) {
        userModel userDetails = null;
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = ""
                + "select userId, "
                + "passWord, "
                + "firstName, "
                + "middleName, "
                + "lastName, "
                + "completeAddress, "
                + "birthday, "
                + "cellNumber, "
                + "userRole, "
                + "accountStatus, "
                + "loginStatus "
                + "from userstable "
                + "where userId = ? ";
        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, userId);
            rs = ps.executeQuery();

            if (rs.next()) {
                userId = rs.getInt("userId");
                String passWord = rs.getString("passWord");
                String firstName = rs.getString("firstName");
                String middleName = rs.getString("middleName");
                String lastName = rs.getString("lastName");
                String completeAddress = rs.getString("completeAddress");
                String birthday = rs.getString("birthday");
                String cellNumber = rs.getString("cellNumber");
                String userRole = rs.getString("userRole");
                userDetails = new userModel(
                        userId,
                        passWord,   
                        firstName,
                        middleName,
                        lastName,
                        completeAddress,
                        birthday,
                        cellNumber,
                        userRole);
            }
        } catch (SQLException e) {
            System.out.println("getUserDetails Error: " + e);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    //ignore
                }
            }

        }
        return userDetails;
    }

    public boolean createUser(userModel users) {
        boolean success = false;
        Connection conn = null;
        PreparedStatement ps = null;
        String query = "insert into userstable ("
                + "userId, "
                + "passWord, "
                + "firstName, "
                + "middleName, "
                + "lastName, "
                + "completeAddress, "
                + "birthday, "
                + "cellNumber, "
                + "userRole) "
                + "values (?,?,?,?,?,?,?,?,?)";

        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, users.getUserId());
            ps.setString(2, users.getPassword());
            ps.setString(3, users.getFirstName());
            ps.setString(4, users.getMiddleName());
            ps.setString(5, users.getLastName());
            ps.setString(6, users.getCompleteAddress());
            ps.setString(7, users.getBirthday());
            ps.setString(8, users.getCellNumber());
            ps.setString(9, users.getUserRole());
            int rowAffected = ps.executeUpdate();
            if (rowAffected != 0) {
                success = true;
            }
        } catch (SQLException e) {
            System.out.println("createUser Error: " + e);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    //ignore
                }
            }

        }
        return success;
    }

    public boolean updateUser(userModel users) {
        boolean success = false;
        Connection conn = null;
        PreparedStatement ps = null;
        String query = "update userstable set "
                + "passWord = ?, "
                + "firstName = ?, "
                + "middleName = ?, "
                + "lastName = ?, "
                + "completeAddress = ?, "
                + "birthday = ?, "
                + "cellNumber = ?, "
                + "userRole = ? "
                + "where userId = ? ";  
        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(9, users.getUserId());
            ps.setString(1, users.getPassword());
            ps.setString(2, users.getFirstName());
            ps.setString(3, users.getMiddleName());
            ps.setString(4, users.getLastName());
            ps.setString(5, users.getCompleteAddress());
            ps.setString(6, users.getBirthday());
            ps.setString(7, users.getCellNumber());
            ps.setString(8, users.getUserRole());
            int rowAffected = ps.executeUpdate();
            if (rowAffected != 0) {
                success = true;
            }
        } catch (SQLException e) {
            System.out.println("updateUser Error: " + e);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
        }
        return success;
    }

    public boolean deleteUser(int userId) {
        boolean success = false;
        Connection conn = null;
        PreparedStatement ps = null;
        String query = "delete from userstable "
                + "where userId = ? ";
        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, userId);
            int rowAffected = ps.executeUpdate();
            if (rowAffected != 0) {
                success = true;
            }
        } catch (SQLException e) {
            System.out.println("deleteUser Error: " + e);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    //ignore
                }
            }

        }
        return success;
    }
}
































