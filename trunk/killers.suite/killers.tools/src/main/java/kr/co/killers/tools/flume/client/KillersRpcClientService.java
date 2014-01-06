package kr.co.killers.tools.flume.client;

import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.Properties;

import org.apache.flume.Event;
import org.apache.flume.EventDeliveryException;
import org.apache.flume.api.RpcClient;
import org.apache.flume.api.RpcClientFactory;
import org.apache.flume.event.EventBuilder;

public class KillersRpcClientService {
	private static KillersRpcClientService rpcSClient = new KillersRpcClientService(); 
	
	private RpcClient client;
	private Properties props;
	
	public void init(Properties props){
		this.props = props;
		this.client = RpcClientFactory.getInstance(props);
	}
	
	public void sendDataToFlume(String data){
		Event event = EventBuilder.withBody(data, Charset.forName("UTF-8"));
		try{
			client.append(event);
		}catch(EventDeliveryException e){
			client.close();
			client = null;
			client = RpcClientFactory.getInstance(this.props);
		}
	}
	
	public void cleanUp(){
		client.close();
	}
	
	public KillersRpcClientService() {
		super();
		InputStream is = getClass().getResourceAsStream("rpcClient.properties");
		Properties props = new Properties();
		try {
			props.load(is);
			this.init(props);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public static KillersRpcClientService getInstance(){
		return rpcSClient;
	}
}
