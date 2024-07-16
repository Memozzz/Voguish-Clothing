package ph.pup.itech.hrmgr.model;

public class productModel {

    public int productId;
    public String productName;
    private String description;
    private String size;
    private String price;
    private String quantity;

    public productModel() {
    }

    public productModel(
            int productId,
            String productName,
            String description,
            String size,
            String price,
            String quantity) {

        this.productId = productId;
        this.productName = productName;
        this.description = description;
        this.size = size;
        this.price = price;
        this.quantity = quantity;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getQuantity() {
        return quantity;
    }

    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }
}
