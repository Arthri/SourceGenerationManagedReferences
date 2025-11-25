#!/usr/bin/env bash

SCRIPT_DIR="$(dirname "$0")"
PROJECT_DIR="$SCRIPT_DIR"'/src/SourceGenerationManagedReferences/'

rm -rf "$SCRIPT_DIR"'/packages_cache/sourcegenerationmanagedreferences'
dotnet pack "$PROJECT_DIR"'SourceGenerationManagedReferences.csproj'
dotnet nuget push "$PROJECT_DIR"'bin/Release/SourceGenerationManagedReferences.1.0.0.nupkg' -s 'Project-Local Source'
