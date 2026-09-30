using Godot;
using System;
using System.IO;
using System.Text.Json;

public partial class JsonDataObject : DataObject
{
    private JsonElement element;
    
    public JsonDataObject(JsonElement element)
    {
        this.element = element;
    }

    //TODO add better error handling, like a DataResult object or something that handles it without throwing
    
    public DataResult<DataObject> GetDataObject(string key)
    {  
    
        if(element.ValueKind != JsonValueKind.Object)  return DataResult<DataObject>.Fail();
        JsonElement subElement;
        return element.TryGetProperty(key,out subElement) ? DataResult<DataObject>.Success(new JsonDataObject(subElement)) : DataResult<DataObject>.Fail();
        

    }

    public DataResult<DataArray> GetArray(string key)
    {
        if(element.ValueKind != JsonValueKind.Object)  return DataResult<DataArray>.Fail();
        
        JsonElement subElement;
        if(!element.TryGetProperty(key,out subElement)) return DataResult<DataArray>.Fail();

        return subElement.ValueKind != JsonValueKind.Array? DataResult<DataArray>.Fail() : DataResult<DataArray>.Success(new JsonDataArray(subElement));
    }

    public DataResult<long> GetLong(string key)
    {
        DataResult<DataObject> obj =  GetDataObject(key);
        return obj.Failed() ? DataResult<long>.Fail() :  obj.GetValue().GetLong();
    }
    public DataResult<int> GetInt(string key)
    {
      DataResult<DataObject> obj =  GetDataObject(key);
        return obj.Failed() ? DataResult<int>.Fail() :  obj.GetValue().GetInt();
    }

    public DataResult<string> GetString(string key)
    {
        DataResult<DataObject> obj =  GetDataObject(key);
        return obj.Failed() ? DataResult<string>.Fail() :  obj.GetValue().GetString();
    }

    public DataResult<double> GetDouble(string key)
    {
        DataResult<DataObject> obj =  GetDataObject(key);
        return obj.Failed() ? DataResult<double>.Fail() :  obj.GetValue().GetDouble();
    }

    public DataResult<decimal> GetDecimal(string key)
    {
        DataResult<DataObject> obj =  GetDataObject(key);
        return obj.Failed() ? DataResult<decimal>.Fail() :  obj.GetValue().GetDecimal();
    }

    public DataResult<bool> GetBoolean(string key)
    {
        DataResult<DataObject> obj =  GetDataObject(key);
        return obj.Failed() ? DataResult<bool>.Fail() :  obj.GetValue().GetBoolean();
    }

    public DataResult<DataArray> GetArray()
    {
        throw new NotImplementedException();
    }


    public DataResult<long> GetLong()
    {
        if(element.ValueKind != JsonValueKind.Number) return DataResult<long>.Fail();
        long number;
        return element.TryGetInt64(out number) ? DataResult<long>.Success(number) : DataResult<long>.Fail();
    }
    public DataResult<int> GetInt()
    {
        if(element.ValueKind != JsonValueKind.Number) return DataResult<int>.Fail();
        int number;
        return element.TryGetInt32(out number) ? DataResult<int>.Success(number) : DataResult<int>.Fail();
    }

    public DataResult<string> GetString()
    {
        return element.ValueKind != JsonValueKind.String ? DataResult<string>.Fail() : DataResult<string>.Success(element.GetString());
    }

    public DataResult<double> GetDouble()
    {
        if(element.ValueKind != JsonValueKind.Number) return DataResult<double>.Fail();
        double number;
        return element.TryGetDouble(out number) ? DataResult<double>.Success(number) : DataResult<double>.Fail();
    }

    public DataResult<decimal> GetDecimal()
    {
        if(element.ValueKind != JsonValueKind.Number) return DataResult<decimal>.Fail();
        decimal number;
        return element.TryGetDecimal(out number) ? DataResult<decimal>.Success(number) : DataResult<decimal>.Fail();
    }

    public DataResult<bool> GetBoolean()
    {
        if(element.ValueKind != JsonValueKind.True && element.ValueKind != JsonValueKind.True) return DataResult<bool>.Fail();
        return DataResult<bool>.Success(element.GetBoolean());
    }


}
