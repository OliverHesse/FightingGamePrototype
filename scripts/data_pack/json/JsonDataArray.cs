using Godot;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Text.Json;
using System.Text.Json.Nodes;

public partial class JsonDataArray : DataArray
{
    private JsonElement element;

    public JsonDataArray(JsonElement element)
    {
        this.element = element;
    }

    public int GetArrayLength()
    {
        if(element.ValueKind != JsonValueKind.Array) return 0;
        return element.GetArrayLength();
    }
    public DataResult<DataObject[]> AsArray()
    {
        if(element.ValueKind != JsonValueKind.Array) return DataResult<DataObject[]>.Fail();
        DataObject[] objArray = new DataObject[GetArrayLength()];
        int i = 0;
        foreach(JsonElement subElement in element.EnumerateArray())
        {
            objArray[i] = new JsonDataObject(subElement);
            i++;
        }
        return DataResult<DataObject[]>.Success(objArray);
    }

}
