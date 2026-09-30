using Godot;
using System;

public partial class PrimativeCodec<T> : Codec<T>
{
    public delegate DataResult<T> ExtractValue(DataObject dataObject);
    private ExtractValue provider;

    public PrimativeCodec(ExtractValue provider)
    {
        this.provider = provider;
    }

    public T Decode(DataObject dataObject)
    {
        DataResult<T> result = provider(dataObject);
        if(result.Failed()) throw new CodecDecodeError() ;
        return result.GetValue();
    }

}
