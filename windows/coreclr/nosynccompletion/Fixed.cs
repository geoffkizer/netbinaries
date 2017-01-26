using System;

namespace FixedCodeGen
{
    public class Program
    {
        public static unsafe void Test1(byte[] a)
        {
            fixed (byte* p = a)
                p[0] = 0xFF;
        }

        public static unsafe void Test2(byte[] a)
        {
            fixed (byte* p = &a[0])
                p[0] = 0xFF;
        }

        public static void Main(string[] args)
        {
            byte[] a = new byte[32];
            Test1(a);
            Test2(a);
        }
    }
}
