package example;

import cn.fcsca.HelloWorldServiceLocator;
import cn.fcsca.HelloWorld_PortType;

public class HelloWorldClient {
  public static void main(String[] argv) {
      try {
          HelloWorldServiceLocator locator = new HelloWorldServiceLocator();
          HelloWorld_PortType service = locator.getHelloWorld();
          System.out.println(service.sayHelloWorldFrom("Fcscanf"));
      } catch (javax.xml.rpc.ServiceException ex) {
          ex.printStackTrace();
      } catch (java.rmi.RemoteException ex) {
          ex.printStackTrace();
      }
  }
}
