.class public interface abstract Lcom/miui/zeus/google/gson/JsonSerializer;
.super Ljava/lang/Object;
.source "JsonSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/miui/zeus/google/gson/JsonSerializationContext;)Lcom/miui/zeus/google/gson/JsonElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/reflect/Type;",
            "Lcom/miui/zeus/google/gson/JsonSerializationContext;",
            ")",
            "Lcom/miui/zeus/google/gson/JsonElement;"
        }
    .end annotation
.end method
