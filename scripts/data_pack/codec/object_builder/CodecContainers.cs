using Godot;
using System;

public interface CodecContainer<T>
{
    
        public DataResult<T> resolve(DataObject dataObject);
        public ObjectCodec<T> Build()
        {
            return new ObjectCodec<T>(this);
        }
}

public readonly struct F1<V, T1> : CodecContainer<V>
{
    public delegate DataResult<V> BuildObject(T1 t1);

    public KeyValCodec<T1> C1 { get; init; }
    public BuildObject Provider { get; init; }

    public DataResult<V> resolve(DataObject dataObject)
    {
        return Provider(
            C1.Decode(dataObject).Right
        );
    }
}

public readonly struct F2<V, T1, T2> : CodecContainer<V>
{
    public delegate DataResult<V> BuildObject(T1 t1, T2 t2);

    public KeyValCodec<T1> C1 { get; init; }
    public KeyValCodec<T2> C2 { get; init; }
    public BuildObject Provider { get; init; }

    public DataResult<V> resolve(DataObject dataObject)
    {
        return Provider(
            C1.Decode(dataObject).Right,
            C2.Decode(dataObject).Right
        );
    }
}

public readonly struct F3<V, T1, T2, T3> : CodecContainer<V>
{
    public delegate DataResult<V> BuildObject(T1 t1, T2 t2, T3 t3);

    public KeyValCodec<T1> C1 { get; init; }
    public KeyValCodec<T2> C2 { get; init; }
    public KeyValCodec<T3> C3 { get; init; }
    public BuildObject Provider { get; init; }

    public DataResult<V> resolve(DataObject dataObject)
    {
        return Provider(
            C1.Decode(dataObject).Right,
            C2.Decode(dataObject).Right,
            C3.Decode(dataObject).Right
        );
    }
}

public readonly struct F4<V, T1, T2, T3, T4> : CodecContainer<V>
{
    public delegate DataResult<V> BuildObject(T1 t1, T2 t2, T3 t3, T4 t4);

    public KeyValCodec<T1> C1 { get; init; }
    public KeyValCodec<T2> C2 { get; init; }
    public KeyValCodec<T3> C3 { get; init; }
    public KeyValCodec<T4> C4 { get; init; }
    public BuildObject Provider { get; init; }

    public DataResult<V> resolve(DataObject dataObject)
    {
        return Provider(
            C1.Decode(dataObject).Right,
            C2.Decode(dataObject).Right,
            C3.Decode(dataObject).Right,
            C4.Decode(dataObject).Right
        );
    }
}

public readonly struct F5<V, T1, T2, T3, T4, T5> : CodecContainer<V>
{
    public delegate DataResult<V> BuildObject(T1 t1, T2 t2, T3 t3, T4 t4, T5 t5);

    public KeyValCodec<T1> C1 { get; init; }
    public KeyValCodec<T2> C2 { get; init; }
    public KeyValCodec<T3> C3 { get; init; }
    public KeyValCodec<T4> C4 { get; init; }
    public KeyValCodec<T5> C5 { get; init; }
    public BuildObject Provider { get; init; }

    public DataResult<V> resolve(DataObject dataObject)
    {
        return Provider(
            C1.Decode(dataObject).Right,
            C2.Decode(dataObject).Right,
            C3.Decode(dataObject).Right,
            C4.Decode(dataObject).Right,
            C5.Decode(dataObject).Right
        );
    }
}

public readonly struct F6<V, T1, T2, T3, T4, T5, T6> : CodecContainer<V>
{
    public delegate DataResult<V> BuildObject(T1 t1, T2 t2, T3 t3, T4 t4, T5 t5, T6 t6);

    public KeyValCodec<T1> C1 { get; init; }
    public KeyValCodec<T2> C2 { get; init; }
    public KeyValCodec<T3> C3 { get; init; }
    public KeyValCodec<T4> C4 { get; init; }
    public KeyValCodec<T5> C5 { get; init; }
    public KeyValCodec<T6> C6 { get; init; }
    public BuildObject Provider { get; init; }

    public DataResult<V> resolve(DataObject dataObject)
    {
        return Provider(
            C1.Decode(dataObject).Right,
            C2.Decode(dataObject).Right,
            C3.Decode(dataObject).Right,
            C4.Decode(dataObject).Right,
            C5.Decode(dataObject).Right,
            C6.Decode(dataObject).Right
        );
    }
}

public readonly struct F7<V, T1, T2, T3, T4, T5, T6, T7> : CodecContainer<V>
{
    public delegate DataResult<V> BuildObject(T1 t1, T2 t2, T3 t3, T4 t4, T5 t5, T6 t6, T7 t7);

    public KeyValCodec<T1> C1 { get; init; }
    public KeyValCodec<T2> C2 { get; init; }
    public KeyValCodec<T3> C3 { get; init; }
    public KeyValCodec<T4> C4 { get; init; }
    public KeyValCodec<T5> C5 { get; init; }
    public KeyValCodec<T6> C6 { get; init; }
    public KeyValCodec<T7> C7 { get; init; }
    public BuildObject Provider { get; init; }

    public DataResult<V> resolve(DataObject dataObject)
    {
        return Provider(
            C1.Decode(dataObject).Right,
            C2.Decode(dataObject).Right,
            C3.Decode(dataObject).Right,
            C4.Decode(dataObject).Right,
            C5.Decode(dataObject).Right,
            C6.Decode(dataObject).Right,
            C7.Decode(dataObject).Right
        );
    }
}

public readonly struct F8<V, T1, T2, T3, T4, T5, T6, T7, T8> : CodecContainer<V>
{
    public delegate DataResult<V> BuildObject(T1 t1, T2 t2, T3 t3, T4 t4, T5 t5, T6 t6, T7 t7, T8 t8);

    public KeyValCodec<T1> C1 { get; init; }
    public KeyValCodec<T2> C2 { get; init; }
    public KeyValCodec<T3> C3 { get; init; }
    public KeyValCodec<T4> C4 { get; init; }
    public KeyValCodec<T5> C5 { get; init; }
    public KeyValCodec<T6> C6 { get; init; }
    public KeyValCodec<T7> C7 { get; init; }
    public KeyValCodec<T8> C8 { get; init; }
    public BuildObject Provider { get; init; }

    public DataResult<V> resolve(DataObject dataObject)
    {
        return Provider(
            C1.Decode(dataObject).Right,
            C2.Decode(dataObject).Right,
            C3.Decode(dataObject).Right,
            C4.Decode(dataObject).Right,
            C5.Decode(dataObject).Right,
            C6.Decode(dataObject).Right,
            C7.Decode(dataObject).Right,
            C8.Decode(dataObject).Right
        );
    }
}

public readonly struct F9<V, T1, T2, T3, T4, T5, T6, T7, T8, T9> : CodecContainer<V>
{
    public delegate DataResult<V> BuildObject(T1 t1, T2 t2, T3 t3, T4 t4, T5 t5, T6 t6, T7 t7, T8 t8, T9 t9);

    public KeyValCodec<T1> C1 { get; init; }
    public KeyValCodec<T2> C2 { get; init; }
    public KeyValCodec<T3> C3 { get; init; }
    public KeyValCodec<T4> C4 { get; init; }
    public KeyValCodec<T5> C5 { get; init; }
    public KeyValCodec<T6> C6 { get; init; }
    public KeyValCodec<T7> C7 { get; init; }
    public KeyValCodec<T8> C8 { get; init; }
    public KeyValCodec<T9> C9 { get; init; }
    public BuildObject Provider { get; init; }

    public DataResult<V> resolve(DataObject dataObject)
    {
        return Provider(
            C1.Decode(dataObject).Right,
            C2.Decode(dataObject).Right,
            C3.Decode(dataObject).Right,
            C4.Decode(dataObject).Right,
            C5.Decode(dataObject).Right,
            C6.Decode(dataObject).Right,
            C7.Decode(dataObject).Right,
            C8.Decode(dataObject).Right,
            C9.Decode(dataObject).Right
        );
    }
}

public readonly struct F10<V, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10> : CodecContainer<V>
{
    public delegate DataResult<V> BuildObject(
        T1 t1, T2 t2, T3 t3, T4 t4, T5 t5,
        T6 t6, T7 t7, T8 t8, T9 t9, T10 t10);

    public KeyValCodec<T1> C1 { get; init; }
    public KeyValCodec<T2> C2 { get; init; }
    public KeyValCodec<T3> C3 { get; init; }
    public KeyValCodec<T4> C4 { get; init; }
    public KeyValCodec<T5> C5 { get; init; }
    public KeyValCodec<T6> C6 { get; init; }
    public KeyValCodec<T7> C7 { get; init; }
    public KeyValCodec<T8> C8 { get; init; }
    public KeyValCodec<T9> C9 { get; init; }
    public KeyValCodec<T10> C10 { get; init; }
    public BuildObject Provider { get; init; }

    public DataResult<V> resolve(DataObject dataObject)
    {
        return Provider(
            C1.Decode(dataObject).Right,
            C2.Decode(dataObject).Right,
            C3.Decode(dataObject).Right,
            C4.Decode(dataObject).Right,
            C5.Decode(dataObject).Right,
            C6.Decode(dataObject).Right,
            C7.Decode(dataObject).Right,
            C8.Decode(dataObject).Right,
            C9.Decode(dataObject).Right,
            C10.Decode(dataObject).Right
        );
    }
}

public readonly struct F11<V, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11> : CodecContainer<V>
{
    public delegate DataResult<V> BuildObject(
        T1 t1, T2 t2, T3 t3, T4 t4, T5 t5,
        T6 t6, T7 t7, T8 t8, T9 t9, T10 t10, T11 t11);

    public KeyValCodec<T1> C1 { get; init; }
    public KeyValCodec<T2> C2 { get; init; }
    public KeyValCodec<T3> C3 { get; init; }
    public KeyValCodec<T4> C4 { get; init; }
    public KeyValCodec<T5> C5 { get; init; }
    public KeyValCodec<T6> C6 { get; init; }
    public KeyValCodec<T7> C7 { get; init; }
    public KeyValCodec<T8> C8 { get; init; }
    public KeyValCodec<T9> C9 { get; init; }
    public KeyValCodec<T10> C10 { get; init; }
    public KeyValCodec<T11> C11 { get; init; }
    public BuildObject Provider { get; init; }

    public DataResult<V> resolve(DataObject dataObject)
    {
        return Provider(
            C1.Decode(dataObject).Right,
            C2.Decode(dataObject).Right,
            C3.Decode(dataObject).Right,
            C4.Decode(dataObject).Right,
            C5.Decode(dataObject).Right,
            C6.Decode(dataObject).Right,
            C7.Decode(dataObject).Right,
            C8.Decode(dataObject).Right,
            C9.Decode(dataObject).Right,
            C10.Decode(dataObject).Right,
            C11.Decode(dataObject).Right
        );
    }
}

public readonly struct F12<V, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12> : CodecContainer<V>
{
    public delegate DataResult<V> BuildObject(
        T1 t1, T2 t2, T3 t3, T4 t4, T5 t5,
        T6 t6, T7 t7, T8 t8, T9 t9, T10 t10, T11 t11, T12 t12);

    public KeyValCodec<T1> C1 { get; init; }
    public KeyValCodec<T2> C2 { get; init; }
    public KeyValCodec<T3> C3 { get; init; }
    public KeyValCodec<T4> C4 { get; init; }
    public KeyValCodec<T5> C5 { get; init; }
    public KeyValCodec<T6> C6 { get; init; }
    public KeyValCodec<T7> C7 { get; init; }
    public KeyValCodec<T8> C8 { get; init; }
    public KeyValCodec<T9> C9 { get; init; }
    public KeyValCodec<T10> C10 { get; init; }
    public KeyValCodec<T11> C11 { get; init; }
    public KeyValCodec<T12> C12 { get; init; }
    public BuildObject Provider { get; init; }

    public DataResult<V> resolve(DataObject dataObject)
    {
        return Provider(
            C1.Decode(dataObject).Right,
            C2.Decode(dataObject).Right,
            C3.Decode(dataObject).Right,
            C4.Decode(dataObject).Right,
            C5.Decode(dataObject).Right,
            C6.Decode(dataObject).Right,
            C7.Decode(dataObject).Right,
            C8.Decode(dataObject).Right,
            C9.Decode(dataObject).Right,
            C10.Decode(dataObject).Right,
            C11.Decode(dataObject).Right,
            C12.Decode(dataObject).Right
        );
    }
}

public readonly struct F13<V, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13> : CodecContainer<V>
{
    public delegate DataResult<V> BuildObject(
        T1 t1, T2 t2, T3 t3, T4 t4, T5 t5,
        T6 t6, T7 t7, T8 t8, T9 t9, T10 t10,
        T11 t11, T12 t12, T13 t13);

    public KeyValCodec<T1> C1 { get; init; }
    public KeyValCodec<T2> C2 { get; init; }
    public KeyValCodec<T3> C3 { get; init; }
    public KeyValCodec<T4> C4 { get; init; }
    public KeyValCodec<T5> C5 { get; init; }
    public KeyValCodec<T6> C6 { get; init; }
    public KeyValCodec<T7> C7 { get; init; }
    public KeyValCodec<T8> C8 { get; init; }
    public KeyValCodec<T9> C9 { get; init; }
    public KeyValCodec<T10> C10 { get; init; }
    public KeyValCodec<T11> C11 { get; init; }
    public KeyValCodec<T12> C12 { get; init; }
    public KeyValCodec<T13> C13 { get; init; }
    public BuildObject Provider { get; init; }

    public DataResult<V> resolve(DataObject dataObject)
    {
        return Provider(
            C1.Decode(dataObject).Right,
            C2.Decode(dataObject).Right,
            C3.Decode(dataObject).Right,
            C4.Decode(dataObject).Right,
            C5.Decode(dataObject).Right,
            C6.Decode(dataObject).Right,
            C7.Decode(dataObject).Right,
            C8.Decode(dataObject).Right,
            C9.Decode(dataObject).Right,
            C10.Decode(dataObject).Right,
            C11.Decode(dataObject).Right,
            C12.Decode(dataObject).Right,
            C13.Decode(dataObject).Right
        );
    }
}

public readonly struct F14<V, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14> : CodecContainer<V>
{
    public delegate DataResult<V> BuildObject(
        T1 t1, T2 t2, T3 t3, T4 t4, T5 t5,
        T6 t6, T7 t7, T8 t8, T9 t9, T10 t10,
        T11 t11, T12 t12, T13 t13, T14 t14);

    public KeyValCodec<T1> C1 { get; init; }
    public KeyValCodec<T2> C2 { get; init; }
    public KeyValCodec<T3> C3 { get; init; }
    public KeyValCodec<T4> C4 { get; init; }
    public KeyValCodec<T5> C5 { get; init; }
    public KeyValCodec<T6> C6 { get; init; }
    public KeyValCodec<T7> C7 { get; init; }
    public KeyValCodec<T8> C8 { get; init; }
    public KeyValCodec<T9> C9 { get; init; }
    public KeyValCodec<T10> C10 { get; init; }
    public KeyValCodec<T11> C11 { get; init; }
    public KeyValCodec<T12> C12 { get; init; }
    public KeyValCodec<T13> C13 { get; init; }
    public KeyValCodec<T14> C14 { get; init; }
    public BuildObject Provider { get; init; }

    public DataResult<V> resolve(DataObject dataObject)
    {
        return Provider(
            C1.Decode(dataObject).Right,
            C2.Decode(dataObject).Right,
            C3.Decode(dataObject).Right,
            C4.Decode(dataObject).Right,
            C5.Decode(dataObject).Right,
            C6.Decode(dataObject).Right,
            C7.Decode(dataObject).Right,
            C8.Decode(dataObject).Right,
            C9.Decode(dataObject).Right,
            C10.Decode(dataObject).Right,
            C11.Decode(dataObject).Right,
            C12.Decode(dataObject).Right,
            C13.Decode(dataObject).Right,
            C14.Decode(dataObject).Right
        );
    }
}

public readonly struct F15<V, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15> : CodecContainer<V>
{
    public delegate DataResult<V> BuildObject(
        T1 t1, T2 t2, T3 t3, T4 t4, T5 t5,
        T6 t6, T7 t7, T8 t8, T9 t9, T10 t10,
        T11 t11, T12 t12, T13 t13, T14 t14, T15 t15);

    public KeyValCodec<T1> C1 { get; init; }
    public KeyValCodec<T2> C2 { get; init; }
    public KeyValCodec<T3> C3 { get; init; }
    public KeyValCodec<T4> C4 { get; init; }
    public KeyValCodec<T5> C5 { get; init; }
    public KeyValCodec<T6> C6 { get; init; }
    public KeyValCodec<T7> C7 { get; init; }
    public KeyValCodec<T8> C8 { get; init; }
    public KeyValCodec<T9> C9 { get; init; }
    public KeyValCodec<T10> C10 { get; init; }
    public KeyValCodec<T11> C11 { get; init; }
    public KeyValCodec<T12> C12 { get; init; }
    public KeyValCodec<T13> C13 { get; init; }
    public KeyValCodec<T14> C14 { get; init; }
    public KeyValCodec<T15> C15 { get; init; }
    public BuildObject Provider { get; init; }

    public DataResult<V> resolve(DataObject dataObject)
    {
        return Provider(
            C1.Decode(dataObject).Right,
            C2.Decode(dataObject).Right,
            C3.Decode(dataObject).Right,
            C4.Decode(dataObject).Right,
            C5.Decode(dataObject).Right,
            C6.Decode(dataObject).Right,
            C7.Decode(dataObject).Right,
            C8.Decode(dataObject).Right,
            C9.Decode(dataObject).Right,
            C10.Decode(dataObject).Right,
            C11.Decode(dataObject).Right,
            C12.Decode(dataObject).Right,
            C13.Decode(dataObject).Right,
            C14.Decode(dataObject).Right,
            C15.Decode(dataObject).Right
        );
    }
}

public readonly struct F16<V, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16> : CodecContainer<V>
{
    public delegate DataResult<V> BuildObject(
        T1 t1, T2 t2, T3 t3, T4 t4, T5 t5,
        T6 t6, T7 t7, T8 t8, T9 t9, T10 t10,
        T11 t11, T12 t12, T13 t13, T14 t14, T15 t15, T16 t16);

    public KeyValCodec<T1> C1 { get; init; }
    public KeyValCodec<T2> C2 { get; init; }
    public KeyValCodec<T3> C3 { get; init; }
    public KeyValCodec<T4> C4 { get; init; }
    public KeyValCodec<T5> C5 { get; init; }
    public KeyValCodec<T6> C6 { get; init; }
    public KeyValCodec<T7> C7 { get; init; }
    public KeyValCodec<T8> C8 { get; init; }
    public KeyValCodec<T9> C9 { get; init; }
    public KeyValCodec<T10> C10 { get; init; }
    public KeyValCodec<T11> C11 { get; init; }
    public KeyValCodec<T12> C12 { get; init; }
    public KeyValCodec<T13> C13 { get; init; }
    public KeyValCodec<T14> C14 { get; init; }
    public KeyValCodec<T15> C15 { get; init; }
    public KeyValCodec<T16> C16 { get; init; }
    public BuildObject Provider { get; init; }

    public DataResult<V> resolve(DataObject dataObject)
    {
        return Provider(
            C1.Decode(dataObject).Right,
            C2.Decode(dataObject).Right,
            C3.Decode(dataObject).Right,
            C4.Decode(dataObject).Right,
            C5.Decode(dataObject).Right,
            C6.Decode(dataObject).Right,
            C7.Decode(dataObject).Right,
            C8.Decode(dataObject).Right,
            C9.Decode(dataObject).Right,
            C10.Decode(dataObject).Right,
            C11.Decode(dataObject).Right,
            C12.Decode(dataObject).Right,
            C13.Decode(dataObject).Right,
            C14.Decode(dataObject).Right,
            C15.Decode(dataObject).Right,
            C16.Decode(dataObject).Right
        );
    }
}

public readonly struct F17<V, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17> : CodecContainer<V>
{
    public delegate DataResult<V> BuildObject(
        T1 t1, T2 t2, T3 t3, T4 t4, T5 t5,
        T6 t6, T7 t7, T8 t8, T9 t9, T10 t10,
        T11 t11, T12 t12, T13 t13, T14 t14, T15 t15,
        T16 t16, T17 t17);

    public KeyValCodec<T1> C1 { get; init; }
    public KeyValCodec<T2> C2 { get; init; }
    public KeyValCodec<T3> C3 { get; init; }
    public KeyValCodec<T4> C4 { get; init; }
    public KeyValCodec<T5> C5 { get; init; }
    public KeyValCodec<T6> C6 { get; init; }
    public KeyValCodec<T7> C7 { get; init; }
    public KeyValCodec<T8> C8 { get; init; }
    public KeyValCodec<T9> C9 { get; init; }
    public KeyValCodec<T10> C10 { get; init; }
    public KeyValCodec<T11> C11 { get; init; }
    public KeyValCodec<T12> C12 { get; init; }
    public KeyValCodec<T13> C13 { get; init; }
    public KeyValCodec<T14> C14 { get; init; }
    public KeyValCodec<T15> C15 { get; init; }
    public KeyValCodec<T16> C16 { get; init; }
    public KeyValCodec<T17> C17 { get; init; }
    public BuildObject Provider { get; init; }

    public DataResult<V> resolve(DataObject dataObject)
    {
        return Provider(
            C1.Decode(dataObject).Right,
            C2.Decode(dataObject).Right,
            C3.Decode(dataObject).Right,
            C4.Decode(dataObject).Right,
            C5.Decode(dataObject).Right,
            C6.Decode(dataObject).Right,
            C7.Decode(dataObject).Right,
            C8.Decode(dataObject).Right,
            C9.Decode(dataObject).Right,
            C10.Decode(dataObject).Right,
            C11.Decode(dataObject).Right,
            C12.Decode(dataObject).Right,
            C13.Decode(dataObject).Right,
            C14.Decode(dataObject).Right,
            C15.Decode(dataObject).Right,
            C16.Decode(dataObject).Right,
            C17.Decode(dataObject).Right
        );
    }
}

public readonly struct F18<V, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18> : CodecContainer<V>
{
    public delegate DataResult<V> BuildObject(
        T1 t1, T2 t2, T3 t3, T4 t4, T5 t5,
        T6 t6, T7 t7, T8 t8, T9 t9, T10 t10,
        T11 t11, T12 t12, T13 t13, T14 t14, T15 t15,
        T16 t16, T17 t17, T18 t18);

    public KeyValCodec<T1> C1 { get; init; }
    public KeyValCodec<T2> C2 { get; init; }
    public KeyValCodec<T3> C3 { get; init; }
    public KeyValCodec<T4> C4 { get; init; }
    public KeyValCodec<T5> C5 { get; init; }
    public KeyValCodec<T6> C6 { get; init; }
    public KeyValCodec<T7> C7 { get; init; }
    public KeyValCodec<T8> C8 { get; init; }
    public KeyValCodec<T9> C9 { get; init; }
    public KeyValCodec<T10> C10 { get; init; }
    public KeyValCodec<T11> C11 { get; init; }
    public KeyValCodec<T12> C12 { get; init; }
    public KeyValCodec<T13> C13 { get; init; }
    public KeyValCodec<T14> C14 { get; init; }
    public KeyValCodec<T15> C15 { get; init; }
    public KeyValCodec<T16> C16 { get; init; }
    public KeyValCodec<T17> C17 { get; init; }
    public KeyValCodec<T18> C18 { get; init; }
    public BuildObject Provider { get; init; }

    public DataResult<V> resolve(DataObject dataObject)
    {
        return Provider(
            C1.Decode(dataObject).Right,
            C2.Decode(dataObject).Right,
            C3.Decode(dataObject).Right,
            C4.Decode(dataObject).Right,
            C5.Decode(dataObject).Right,
            C6.Decode(dataObject).Right,
            C7.Decode(dataObject).Right,
            C8.Decode(dataObject).Right,
            C9.Decode(dataObject).Right,
            C10.Decode(dataObject).Right,
            C11.Decode(dataObject).Right,
            C12.Decode(dataObject).Right,
            C13.Decode(dataObject).Right,
            C14.Decode(dataObject).Right,
            C15.Decode(dataObject).Right,
            C16.Decode(dataObject).Right,
            C17.Decode(dataObject).Right,
            C18.Decode(dataObject).Right
        );
    }
}

public readonly struct F19<V, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, T19> : CodecContainer<V>
{
    public delegate DataResult<V> BuildObject(
        T1 t1, T2 t2, T3 t3, T4 t4, T5 t5,
        T6 t6, T7 t7, T8 t8, T9 t9, T10 t10,
        T11 t11, T12 t12, T13 t13, T14 t14, T15 t15,
        T16 t16, T17 t17, T18 t18, T19 t19);

    public KeyValCodec<T1> C1 { get; init; }
    public KeyValCodec<T2> C2 { get; init; }
    public KeyValCodec<T3> C3 { get; init; }
    public KeyValCodec<T4> C4 { get; init; }
    public KeyValCodec<T5> C5 { get; init; }
    public KeyValCodec<T6> C6 { get; init; }
    public KeyValCodec<T7> C7 { get; init; }
    public KeyValCodec<T8> C8 { get; init; }
    public KeyValCodec<T9> C9 { get; init; }
    public KeyValCodec<T10> C10 { get; init; }
    public KeyValCodec<T11> C11 { get; init; }
    public KeyValCodec<T12> C12 { get; init; }
    public KeyValCodec<T13> C13 { get; init; }
    public KeyValCodec<T14> C14 { get; init; }
    public KeyValCodec<T15> C15 { get; init; }
    public KeyValCodec<T16> C16 { get; init; }
    public KeyValCodec<T17> C17 { get; init; }
    public KeyValCodec<T18> C18 { get; init; }
    public KeyValCodec<T19> C19 { get; init; }
    public BuildObject Provider { get; init; }

    public DataResult<V> resolve(DataObject dataObject)
    {
        return Provider(
            C1.Decode(dataObject).Right,
            C2.Decode(dataObject).Right,
            C3.Decode(dataObject).Right,
            C4.Decode(dataObject).Right,
            C5.Decode(dataObject).Right,
            C6.Decode(dataObject).Right,
            C7.Decode(dataObject).Right,
            C8.Decode(dataObject).Right,
            C9.Decode(dataObject).Right,
            C10.Decode(dataObject).Right,
            C11.Decode(dataObject).Right,
            C12.Decode(dataObject).Right,
            C13.Decode(dataObject).Right,
            C14.Decode(dataObject).Right,
            C15.Decode(dataObject).Right,
            C16.Decode(dataObject).Right,
            C17.Decode(dataObject).Right,
            C18.Decode(dataObject).Right,
            C19.Decode(dataObject).Right
        );
    }
}

public readonly struct F20<V, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, T19, T20> : CodecContainer<V>
{
    public delegate DataResult<V> BuildObject(
        T1 t1, T2 t2, T3 t3, T4 t4, T5 t5,
        T6 t6, T7 t7, T8 t8, T9 t9, T10 t10,
        T11 t11, T12 t12, T13 t13, T14 t14, T15 t15,
        T16 t16, T17 t17, T18 t18, T19 t19, T20 t20);

    public KeyValCodec<T1> C1 { get; init; }
    public KeyValCodec<T2> C2 { get; init; }
    public KeyValCodec<T3> C3 { get; init; }
    public KeyValCodec<T4> C4 { get; init; }
    public KeyValCodec<T5> C5 { get; init; }
    public KeyValCodec<T6> C6 { get; init; }
    public KeyValCodec<T7> C7 { get; init; }
    public KeyValCodec<T8> C8 { get; init; }
    public KeyValCodec<T9> C9 { get; init; }
    public KeyValCodec<T10> C10 { get; init; }
    public KeyValCodec<T11> C11 { get; init; }
    public KeyValCodec<T12> C12 { get; init; }
    public KeyValCodec<T13> C13 { get; init; }
    public KeyValCodec<T14> C14 { get; init; }
    public KeyValCodec<T15> C15 { get; init; }
    public KeyValCodec<T16> C16 { get; init; }
    public KeyValCodec<T17> C17 { get; init; }
    public KeyValCodec<T18> C18 { get; init; }
    public KeyValCodec<T19> C19 { get; init; }
    public KeyValCodec<T20> C20 { get; init; }
    public BuildObject Provider { get; init; }

    public DataResult<V> resolve(DataObject dataObject)
    {
        return Provider(
            C1.Decode(dataObject).Right,
            C2.Decode(dataObject).Right,
            C3.Decode(dataObject).Right,
            C4.Decode(dataObject).Right,
            C5.Decode(dataObject).Right,
            C6.Decode(dataObject).Right,
            C7.Decode(dataObject).Right,
            C8.Decode(dataObject).Right,
            C9.Decode(dataObject).Right,
            C10.Decode(dataObject).Right,
            C11.Decode(dataObject).Right,
            C12.Decode(dataObject).Right,
            C13.Decode(dataObject).Right,
            C14.Decode(dataObject).Right,
            C15.Decode(dataObject).Right,
            C16.Decode(dataObject).Right,
            C17.Decode(dataObject).Right,
            C18.Decode(dataObject).Right,
            C19.Decode(dataObject).Right,
            C20.Decode(dataObject).Right
        );
    }
}

