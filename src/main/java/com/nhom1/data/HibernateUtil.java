package com.nhom1.data;

import java.util.Properties;

import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.cfg.Environment;
import org.hibernate.service.ServiceRegistry;

import com.nhom1.model.Bill;
import com.nhom1.model.Customer;
import com.nhom1.model.Product;

public class HibernateUtil {
 private static SessionFactory sessionFactory;

 public static SessionFactory getSessionFactory() {
  if (sessionFactory == null) {
   try {
    Configuration configuration = new Configuration();

    // Hibernate settings equivalent to hibernate.cfg.xml's properties
    Properties settings = new Properties();
    settings.put(Environment.DRIVER, "com.mysql.jdbc.Driver");
    settings.put(Environment.URL, "jdbc:mysql://sql6.freemysqlhosting.net/sql6455603?useSSL=false");
    settings.put(Environment.USER, "sql6455603");
    settings.put(Environment.PASS, "CEYjgXJ2AQ");
    settings.put(Environment.DIALECT, "org.hibernate.dialect.MySQL5Dialect");

    settings.put(Environment.SHOW_SQL, "true");

    settings.put(Environment.CURRENT_SESSION_CONTEXT_CLASS, "thread");

    settings.put(Environment.HBM2DDL_AUTO, "update");

    configuration.setProperties(settings);
    configuration.addAnnotatedClass(Product.class);
    configuration.addAnnotatedClass(Customer.class);
    configuration.addAnnotatedClass(Bill.class);
    ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder()
      .applySettings(configuration.getProperties()).build();
    System.out.println("Hibernate Java Config serviceRegistry created");
    sessionFactory = configuration.buildSessionFactory(serviceRegistry);
    return sessionFactory;

   } catch (Exception e) {
    e.printStackTrace();
   }
  }
  return sessionFactory;
 }
}