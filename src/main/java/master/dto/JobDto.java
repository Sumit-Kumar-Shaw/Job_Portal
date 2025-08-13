package master.dto;
public class JobDto
{
	private String jid;
	private String jnm;
	private String jtype;
	private String jdomain;
	private String jdate;
	private String jyesexp;
	private String cid;
	public String getCid()
	{
		return cid;
	}
	public void setCid(String cid)
	{
		this.cid = cid;
	}
	public String getJid()
	{
		return jid;
	}
	public void setJid(String jid)
	{
		this.jid = jid;
	}
	public String getJnm()
	{
		return jnm;
	}
	public void setJnm(String jnm)
	{
		this.jnm = jnm;
	}
	public String getJtype()
	{
		return jtype;
	}
	public void setJtype(String jtype)
	{
		this.jtype = jtype;
	}
	public String getJdomain()
	{
		return jdomain;
	}
	public void setJdomain(String jdomain)
	{
		this.jdomain = jdomain;
	}
	public String getJdate()
	{
		return jdate;
	}
	public void setJdate(String jdate)
	{
		this.jdate = jdate;
	}
	public String getJyesexp()
	{
		return jyesexp;
	}
	public void setJyesexp(String jyesexp)
	{
		this.jyesexp = jyesexp;
	}
}