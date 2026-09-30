using Godot;
using System;

//TODO setup to include fail message
public partial class DataResult<T>
{
    private bool wasSuccess;
    private T data;
    private DataResult(T data)
    {
        wasSuccess = data != null;
        this.data = data;
    }
    private DataResult()
    {
        wasSuccess = false;    
        data = default;    
    }
    public static DataResult<T> Success(T data)
    {
        return new DataResult<T>(data);
    }
    public static DataResult<T> Fail()
    {
        return new DataResult<T>();
    }

    public bool Failed()
    {
        return !wasSuccess;
    }
    public bool Succeeded()
    {
        return wasSuccess;
    }
    public T GetValue()
    {
        return data;
    }
}
