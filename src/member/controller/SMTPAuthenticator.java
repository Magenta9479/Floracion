package member.controller;

import javax.mail.PasswordAuthentication;
import javax.mail.Authenticator;

public class SMTPAuthenticator extends Authenticator
{
	public SMTPAuthenticator()
	{
	        super();
	}
	 
	public PasswordAuthentication getPasswordAuthentication()
	{
	    String username = "testfloracion";
	    String password = "floracion";
	    
	    return new PasswordAuthentication(username, password);
	}
}
