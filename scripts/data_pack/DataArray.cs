using Godot;
using System;

public interface DataArray 
{
    public int GetArrayLength();
    public DataResult<DataObject[]> AsArray();
}
