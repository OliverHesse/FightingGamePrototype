using Godot;
using System;

public partial class ObjectCodec<T> : Codec<T>
{

    private CodecContainer<T> codecContainer;
    public ObjectCodec(CodecContainer<T> codecContainer)
    {
        this.codecContainer = codecContainer;
    }
    public T Decode(DataObject dataObject)
    {

        DataResult<T> result = codecContainer.resolve(dataObject);
        if(result.Failed()) throw new CodecDecodeError();
        return result.GetValue();
    }


}

public static class ObjectCodecBuilders
{
     public static Codec<V> Build<V,T1>(KeyValCodec<T1> c1,F1<V,T1>.BuildObject provider)
    {
        return new ObjectCodec<V>(
            new F1<V, T1>
                {
                    C1 = c1,
                    Provider = provider
                }
        );

    }
    public static Codec<V> Build<V,T1,T2>(KeyValCodec<T1> c1,KeyValCodec<T2> c2,F2<V,T1,T2>.BuildObject provider)
    {
        return new ObjectCodec<V>(
            new F2<V, T1,T2>
                {
                    C1 = c1,
                    C2 = c2,
                    Provider = provider
                }
        );
    }   
}
