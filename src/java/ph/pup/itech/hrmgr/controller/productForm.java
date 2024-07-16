package ph.pup.itech.hrmgr.controller;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ph.pup.itech.hrmgr.dao.ProductDao;
import ph.pup.itech.hrmgr.model.productModel;


public class productForm extends HttpServlet {

@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String action = request.getServletPath();
        switch (action) {
            case "/product/create/form":
                showProductCreateForm(request, response);
                break;
            case "/product/create":
                createProduct(request, response);
                break;
            case "/product/update/form":
                showProductUpdateForm(request, response);
                break;
            case "/product/update":
                updateProduct(request, response);
                break;
            case "/product/delete":
                deleteProduct(request, response);
                break;
            default:
                viewProduct(request, response);
                break;
        }
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response); 
    }
    
    
    private void viewProduct(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProductDao products = new ProductDao();
        ArrayList<productModel> productList = products.getProductList();
        request.setAttribute("productList", productList);
        RequestDispatcher rd = getServletContext().getRequestDispatcher(
                "/productPage.jsp");
        rd.forward(request, response);
    }
    
    private void showProductCreateForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd = getServletContext().getRequestDispatcher(
                "/productForm.jsp");
        rd.forward(request, response);
    }
    private void createProduct(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         int productId = Integer.parseInt(request.getParameter("productId"));
            String productName =  request.getParameter("productName");
                String description = request.getParameter("description");
                String size = request.getParameter("size");
                String price = request.getParameter("price");
                String quantity = request.getParameter("quantity");
          ProductDao products = new ProductDao();
        productModel createProduct = new productModel(productId, productName, description, size, price,
                quantity);
        
        boolean success = products.createProduct(createProduct);
        if (success) {
            request.setAttribute("message", "Product added successfully!");
            request.setAttribute("alertType", "success");
        } else {
            request.setAttribute("message", "Failed to add Product!");
            request.setAttribute("alertType", "error");
        }
        
        response.sendRedirect(request.getContextPath() + "/product");
    }    

        private void showProductUpdateForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int productId = Integer.parseInt(request.getParameter("productId"));
        ProductDao products = new ProductDao();
        productModel productDetails = products.getProductDetails(productId);
        request.setAttribute("productDetails", productDetails);
        RequestDispatcher rd = getServletContext().getRequestDispatcher(
                "/productEdit.jsp");
        rd.forward(request, response);
    }

    private void updateProduct(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int productId = Integer.parseInt(request.getParameter("productId"));
        String productName = request.getParameter("productName");
        String description = request.getParameter("description");
        String size = request.getParameter("size");
        String price = request.getParameter("price");
        String quantity = request.getParameter("quantity");
        ProductDao products = new ProductDao();
        productModel updateProduct = new productModel(productId, productName, description, size, price,
                quantity);

        boolean success = products.updateProduct(updateProduct);
        if (success) {
            request.setAttribute("message", "Product updated successfully!");
            request.setAttribute("alertType", "success");
        } else {
            request.setAttribute("message", "Failed to update Product!");
            request.setAttribute("alertType", "error");
        }

        response.sendRedirect(request.getContextPath() + "/product");
    }
      private void deleteProduct(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int productId = Integer.parseInt(request.getParameter("productId"));
        ProductDao product = new ProductDao();
        boolean success = product.deleteProduct(productId);
        if (success) {
            request.setAttribute("message", "Product deleted successfully!");
            request.setAttribute("alertType", "success");
        } else {
            request.setAttribute("message", "Failed to delete Product!");
            request.setAttribute("alertType", "error");
        }
        response.sendRedirect(request.getContextPath() + "/product");
    }
}
