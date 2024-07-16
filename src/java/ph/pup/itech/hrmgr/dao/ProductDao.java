package ph.pup.itech.hrmgr.dao;

import ph.pup.itech.hrmgr.model.productModel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ProductDao {

    public ArrayList<productModel> getProductList() {
        ArrayList<productModel> productList = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "select * from productstable";
        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                productModel products = new productModel();
                products.setProductId(rs.getInt("productId"));
                products.setProductName(rs.getString("productName"));
                products.setDescription(rs.getString("description"));
                products.setSize(rs.getString("size"));
                products.setPrice(rs.getString("price"));
                products.setQuantity(rs.getString("quantity"));
                productList.add(products);
            }
            conn.close();
        } catch (SQLException e) {
            System.out.println("getProductList Error: " + e);
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
        return productList;
    }

    public productModel getProductDetails(int productId) {
        productModel productDetails = null;
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = ""
                + "select productId, "
                + "productName, "
                + "description, "
                + "size, "
                + "price, "
                + "quantity "
                + "from productstable "
                + "where productId = ? ";
        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, productId);
            rs = ps.executeQuery();

            if (rs.next()) {
                productId = rs.getInt("productId");
                String productName = rs.getString("productName");
                String description = rs.getString("description");
                String size = rs.getString("size");
                String price = rs.getString("price");
                String quantity = rs.getString("quantity");
                productDetails = new productModel(
                        productId,
                        productName,
                        description,
                        size,
                        price,
                        quantity);
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
        return productDetails;
    }

    public boolean createProduct(productModel products) {
        boolean success = false;
        Connection conn = null;
        PreparedStatement ps = null;
        String query = "insert into productstable ("
                + "productId, "
                + "productName, "
                + "description, "
                + "size, "
                + "price, "
                + "quantity) "
                + "values (?,?,?,?,?,?)";
try {
    conn = ConnectionPool.getConnection();
    ps = conn.prepareStatement(query);
    ps.setInt(1, products.getProductId());
    ps.setString(2, products.getProductName());
    ps.setString(3, products.getDescription());
    ps.setString(4, products.getSize());
    ps.setString(5, products.getPrice());
    ps.setString(6, products.getQuantity());
    int rowAffected = ps.executeUpdate();
    if (rowAffected != 0) {
        success = true;
    }
        } catch (SQLException e) {
            System.out.println("createProduct Error: " + e);
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

    public boolean updateProduct(productModel products) {
        boolean success = false;
        Connection conn = null;
        PreparedStatement ps = null;
        String query = "update productstable set "
                + "productName = ?, "
                + "description = ?, "
                + "size = ?, "
                + "price = ?, "
                + "quantity = ? "
                + "where productId = ? ";
        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(6, products.getProductId());
            ps.setString(1, products.getProductName());
            ps.setString(2, products.getDescription());
            ps.setString(3, products.getSize());
            ps.setString(4, products.getPrice());
            ps.setString(5, products.getQuantity());
            int rowAffected = ps.executeUpdate();
            if (rowAffected != 0) {
                success = true;
            }
        } catch (SQLException e) {
            System.out.println("updateProduct Error: " + e);
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

    public boolean deleteProduct(int productId) {
        boolean success = false;
        Connection conn = null;
        PreparedStatement ps = null;
        String query = "delete from productstable "
                + "where productId = ? ";
        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, productId);
            int rowAffected = ps.executeUpdate();
            if (rowAffected != 0) {
                success = true;
            }
        } catch (SQLException e) {
            System.out.println("deleteProduct Error: " + e);
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
