.class final Lcom/miui/zeus/google/gson/internal/bind/TypeAdapters$5;
.super Lcom/miui/zeus/google/gson/TypeAdapter;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/zeus/google/gson/TypeAdapter<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/zeus/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/miui/zeus/google/gson/stream/JsonReader;)Ljava/lang/Number;
    .locals 2

    invoke-virtual {p1}, Lcom/miui/zeus/google/gson/stream/JsonReader;->peek()Lcom/miui/zeus/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/miui/zeus/google/gson/stream/JsonToken;->NULL:Lcom/miui/zeus/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/miui/zeus/google/gson/stream/JsonReader;->nextNull()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/miui/zeus/google/gson/stream/JsonReader;->nextInt()I

    move-result p1

    int-to-byte p1, p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/miui/zeus/google/gson/JsonSyntaxException;

    invoke-direct {v0, p1}, Lcom/miui/zeus/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic read(Lcom/miui/zeus/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/zeus/google/gson/internal/bind/TypeAdapters$5;->read(Lcom/miui/zeus/google/gson/stream/JsonReader;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/miui/zeus/google/gson/stream/JsonWriter;Ljava/lang/Number;)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/miui/zeus/google/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/miui/zeus/google/gson/stream/JsonWriter;

    return-void
.end method

.method public bridge synthetic write(Lcom/miui/zeus/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcom/miui/zeus/google/gson/internal/bind/TypeAdapters$5;->write(Lcom/miui/zeus/google/gson/stream/JsonWriter;Ljava/lang/Number;)V

    return-void
.end method
