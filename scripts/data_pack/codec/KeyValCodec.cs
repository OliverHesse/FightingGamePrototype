using Godot;
using System;

public partial class KeyValCodec<T> : Codec<Pair<string, T>>
{

    private  readonly Codec<T> valueCodec;
    private readonly string fieldName;
    public KeyValCodec(string fieldName,Codec<T> valueCodec)
    {
        this.valueCodec = valueCodec;
    }
    public Pair<string, T> Decode(DataObject dataObject)
    {
        DataResult<DataObject> result =  dataObject.GetDataObject(fieldName);
        if(result.Failed()) throw new CodecDecodeError();

        return new Pair<string, T>(fieldName,valueCodec.Decode(result.GetValue()));
    }

}
