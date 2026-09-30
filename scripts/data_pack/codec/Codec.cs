using Godot;
using System;

/*
	Defines a Codec, that can take in a generic Key,val object and transform it into T
	Currently no method to encode(might add it in the future)
*/
public interface Codec<T>
{
	public T Decode(DataObject dataObject);

    public KeyValCodec<T> FieldOf(String field)
	{
		return new KeyValCodec<T>(field,this);
	}


}
public static class Codecs
{
	public static readonly Codec<int> INT = new PrimativeCodec<int>(dataObject =>dataObject.GetInt());
	public static readonly Codec<long> LONG = new PrimativeCodec<long>(dataObject =>dataObject.GetLong());
	public static readonly Codec<double> DOUBLE = new PrimativeCodec<double>(dataObject =>dataObject.GetDouble());
	public static readonly Codec<decimal> DECIMAL = new PrimativeCodec<decimal>(dataObject =>dataObject.GetDecimal());
	public static readonly Codec<bool> BOOLEAN = new PrimativeCodec<bool>(dataObject =>dataObject.GetBoolean());

	public static readonly Codec<string> STRING = new PrimativeCodec<string>(dataObject =>dataObject.GetString());
}