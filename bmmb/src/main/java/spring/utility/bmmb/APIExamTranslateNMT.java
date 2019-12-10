package spring.utility.bmmb;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

public class APIExamTranslateNMT {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		String clientId = "XawlTZBqCeTgRM6PSa8O";

		String clientSecret = "K5MbS3CLOC";

		try {
			String text = URLEncoder.encode("It is a good day to die.", "UTF-8");
			String apiURL = "https://openapi.naver.com/v1/papago/n2mt";
			URL url = new URL(apiURL);
			HttpURLConnection con = (HttpURLConnection) url.openConnection();
			con.setRequestMethod("POST");
			con.setRequestProperty("X-Naver-Client-Id", clientId);
			con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
			
			String postParams = "source=en&target=ko&text=" + text;
			con.setDoOutput(true);
			DataOutputStream wr = new DataOutputStream(con.getOutputStream());
			wr.writeBytes(postParams);
			wr.flush();
			wr.close();
			int responseCode = con.getResponseCode();
			BufferedReader br;
			
			if (responseCode==200) {
				br = new BufferedReader(new InputStreamReader(con.getInputStream()));
				
			}else {
				br = new BufferedReader(new InputStreamReader(con.getErrorStream()));	
			}
			String inputLine;
			StringBuffer response = new StringBuffer();
			
			while((inputLine = br.readLine())!=null) {
				response.append(inputLine);
			}
			br.close();
			System.out.println(response.toString());
			
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
	}

}
