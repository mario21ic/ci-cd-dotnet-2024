using Xunit;

namespace MyApp.Tests;

public class UnitTest2
{
    [Fact]
    public void Test4()
    {
        Assert.True(true);
    }

    [Fact]
    public void Test5()
    {
        Assert.True(true); // Bien
        //Assert.True(false); // descomentar para fallar
    }

    [Fact]
    public void Test6()
    {
        Assert.True(true);
    }
}
