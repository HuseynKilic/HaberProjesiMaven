package Properties;
import java.io.UnsupportedEncodingException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;

public class EncryptionUtil {

	private static KeyPair keyPair;
	 
    private static KeyPair initKeyPair() {
        try {
            keyPair = KeyPairGenerator.getInstance("RSA").generateKeyPair();
        } catch (NoSuchAlgorithmException e) {
            System.err.println("Algorithm not supported! " + e.getMessage() + "!");
        }
 
        return keyPair;
    }
	
    public static byte[] encrypt(String text) {
		initKeyPair();
	    byte[] cipherText = null;
	    
	    try {
	      
	      final Cipher cipher = Cipher.getInstance("RSA");
	      cipher.init(Cipher.ENCRYPT_MODE, keyPair.getPublic());
	      cipherText = cipher.doFinal(text.getBytes("UTF-8"));
	    } catch (Exception e) {
	      e.printStackTrace();
	    }
	    return cipherText;
	  }
	
	public static String decrypt(byte[] text) throws UnsupportedEncodingException {
	    byte[] dectyptedText = null;
	    try {
	      
	    	final Cipher cipher = Cipher.getInstance("RSA");
	    	cipher.init(Cipher.DECRYPT_MODE, keyPair.getPrivate());
	        dectyptedText = cipher.doFinal(text);

	    } catch (Exception ex) {
	      ex.printStackTrace();
	    }

	    return new String(dectyptedText,"UTF-8");
	  }
}