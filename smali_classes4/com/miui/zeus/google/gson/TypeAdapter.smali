.class public abstract Lcom/miui/zeus/google/gson/TypeAdapter;
.super Ljava/lang/Object;
.source "TypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromJson(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Lcom/miui/zeus/google/gson/stream/JsonReader;

    invoke-direct {v0, p1}, Lcom/miui/zeus/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v0}, Lcom/miui/zeus/google/gson/TypeAdapter;->read(Lcom/miui/zeus/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final fromJson(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/miui/zeus/google/gson/TypeAdapter;->fromJson(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final fromJsonTree(Lcom/miui/zeus/google/gson/JsonElement;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/zeus/google/gson/JsonElement;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/miui/zeus/google/gson/internal/bind/JsonTreeReader;

    invoke-direct {v0, p1}, Lcom/miui/zeus/google/gson/internal/bind/JsonTreeReader;-><init>(Lcom/miui/zeus/google/gson/JsonElement;)V

    invoke-virtual {p0, v0}, Lcom/miui/zeus/google/gson/TypeAdapter;->read(Lcom/miui/zeus/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/miui/zeus/google/gson/JsonIOException;

    invoke-direct {v0, p1}, Lcom/miui/zeus/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final nullSafe()Lcom/miui/zeus/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/miui/zeus/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/miui/zeus/google/gson/TypeAdapter$1;

    invoke-direct {v0, p0}, Lcom/miui/zeus/google/gson/TypeAdapter$1;-><init>(Lcom/miui/zeus/google/gson/TypeAdapter;)V

    return-object v0
.end method

.method public abstract read(Lcom/miui/zeus/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/zeus/google/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation
.end method

.method public final toJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/miui/zeus/google/gson/TypeAdapter;->toJson(Ljava/io/Writer;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final toJson(Ljava/io/Writer;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Writer;",
            "TT;)V"
        }
    .end annotation

    new-instance v0, Lcom/miui/zeus/google/gson/stream/JsonWriter;

    invoke-direct {v0, p1}, Lcom/miui/zeus/google/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v0, p2}, Lcom/miui/zeus/google/gson/TypeAdapter;->write(Lcom/miui/zeus/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method

.method public final toJsonTree(Ljava/lang/Object;)Lcom/miui/zeus/google/gson/JsonElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/miui/zeus/google/gson/JsonElement;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/miui/zeus/google/gson/internal/bind/JsonTreeWriter;

    invoke-direct {v0}, Lcom/miui/zeus/google/gson/internal/bind/JsonTreeWriter;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/miui/zeus/google/gson/TypeAdapter;->write(Lcom/miui/zeus/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/miui/zeus/google/gson/internal/bind/JsonTreeWriter;->get()Lcom/miui/zeus/google/gson/JsonElement;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/miui/zeus/google/gson/JsonIOException;

    invoke-direct {v0, p1}, Lcom/miui/zeus/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public abstract write(Lcom/miui/zeus/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/zeus/google/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation
.end method
