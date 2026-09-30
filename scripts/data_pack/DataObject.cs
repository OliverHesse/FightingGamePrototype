using Godot;
using System;
/*
	A Key val holder, where val is either a DataObject,raw data(string,int,double,float,boolean),DataList
*/
public interface DataObject 
{
	public DataResult<DataObject> GetDataObject(string key);
	public DataResult<DataArray> GetArray(string key);


	public DataResult<long> GetLong(string key); 
	public DataResult<int> GetInt(string key);
	public DataResult<string> GetString(string key);
	public DataResult<double> GetDouble(string key);
	public DataResult<decimal> GetDecimal(string key);
	public DataResult<bool> GetBoolean(string key);

	public DataResult<DataArray> GetArray();

	public DataResult<long> GetLong(); 
	public DataResult<int> GetInt();
	public DataResult<string> GetString();
	public DataResult<double> GetDouble();
	public DataResult<decimal> GetDecimal();
	public DataResult<bool> GetBoolean();
}
