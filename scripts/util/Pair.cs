using Godot;
using System;

public partial class Pair<T,V>
{
    public T Left {get;set;}
    public V Right {get;set;}

    public Pair(T left,V right)
    {
        Left = left;
        Right = right;
    }
}
