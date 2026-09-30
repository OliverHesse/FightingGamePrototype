using Godot;
using System;

public partial class CodecDecodeError : Exception
{
    public CodecDecodeError():base(){}
    public CodecDecodeError(string? message):base(message){}
}
