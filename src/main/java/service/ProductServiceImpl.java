package service;

import model.Product;

import java.util.*;

public class ProductServiceImpl implements ProductService {
private static Map<Integer, Product> products;
static{
    products=new HashMap<>();
    products.put(1, new Product(1, "Áo",10,100));
    products.put(2, new Product(2, "Quần",12,120));
    products.put(3, new Product(3, "Giày",5,200));
    products.put(4, new Product(4, "Mũ",20,10));
    products.put(5, new Product(5, "Đồng hồ",30,300));
}
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }


    @Override
    public void save(Product product) {
        products.put(product.getId(), product);
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }

    @Override
    public int findByName(String name) {
        Iterator<Product> iterator = products.values().iterator();
        int id = 0;
        while(iterator.hasNext()) {
            Product holder = iterator.next();
            if (Objects.equals(holder.getName(),name)) {
                id = holder.getId();
                break;
            }
        }
        return id;
    }

    @Override
    public void update(int id, Product product) {
        products.put(id,product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }
}
