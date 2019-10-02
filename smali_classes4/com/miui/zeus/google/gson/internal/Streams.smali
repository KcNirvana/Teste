.class public final Lcom/miui/zeus/google/gson/internal/Streams;
.super Ljava/lang/Object;
.source "Streams.java"


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static parse(Lcom/miui/zeus/google/gson/stream/JsonReader;)Lcom/miui/zeus/google/gson/JsonElement;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/zeus/google/gson/stream/JsonReader;->peek()Lcom/miui/zeus/google/gson/stream/JsonToken;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/miui/zeus/google/gson/stream/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/miui/zeus/google/gson/internal/bind/TypeAdapters;->JSON_ELEMENT:Lcom/miui/zeus/google/gson/TypeAdapter;

    invoke-virtual {v1, p0}, Lcom/miui/zeus/google/gson/TypeAdapter;->read(Lcom/miui/zeus/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/zeus/google/gson/JsonElement;
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/miui/zeus/google/gson/stream/MalformedJsonException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    new-instance v0, Lcom/miui/zeus/google/gson/JsonSyntaxException;

    invoke-direct {v0, p0}, Lcom/miui/zeus/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p0

    new-instance v0, Lcom/miui/zeus/google/gson/JsonIOException;

    invoke-direct {v0, p0}, Lcom/miui/zeus/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_3
    move-exception p0

    new-instance v0, Lcom/miui/zeus/google/gson/JsonSyntaxException;

    invoke-direct {v0, p0}, Lcom/miui/zeus/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_4
    move-exception p0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    sget-object p0, Lcom/miui/zeus/google/gson/JsonNull;->INSTANCE:Lcom/miui/zeus/google/gson/JsonNull;

    return-object p0

    :cond_0
    new-instance v0, Lcom/miui/zeus/google/gson/JsonSyntaxException;

    invoke-direct {v0, p0}, Lcom/miui/zeus/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static write(Lcom/miui/zeus/google/gson/JsonElement;Lcom/miui/zeus/google/gson/stream/JsonWriter;)V
    .locals 1

    sget-object v0, Lcom/miui/zeus/google/gson/internal/bind/TypeAdapters;->JSON_ELEMENT:Lcom/miui/zeus/google/gson/TypeAdapter;

    invoke-virtual {v0, p1, p0}, Lcom/miui/zeus/google/gson/TypeAdapter;->write(Lcom/miui/zeus/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method

.method public static writerForAppendable(Ljava/lang/Appendable;)Ljava/io/Writer;
    .locals 2

    instance-of v0, p0, Ljava/io/Writer;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/io/Writer;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/miui/zeus/google/gson/internal/Streams$AppendableWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/zeus/google/gson/internal/Streams$AppendableWriter;-><init>(Ljava/lang/Appendable;Lcom/miui/zeus/google/gson/internal/Streams$1;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method
