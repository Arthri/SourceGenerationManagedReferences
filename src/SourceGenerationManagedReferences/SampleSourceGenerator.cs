using Microsoft.CodeAnalysis;
using System.Text.Json;

namespace SourceGenerationManagedReferences;

[Generator]
public sealed class SampleSourceGenerator : IIncrementalGenerator
{
    public void Initialize(IncrementalGeneratorInitializationContext context)
    {
        context.RegisterPostInitializationOutput(context =>
            context.AddSource("HelloWorld.g.cs", $"""
                #warning {JsonSerializer.Serialize(new { Message = "Hello from SampleSourceGenerator!" })}
                """)
        );
    }
}
