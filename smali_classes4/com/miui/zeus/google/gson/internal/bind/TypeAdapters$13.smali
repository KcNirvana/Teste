.class final Lcom/miui/zeus/google/gson/internal/bind/TypeAdapters$13;
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
    invoke-virtual {p1}, Lcom/miui/zeus/google/gson/stream/JsonReader;->nextDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic read(Lcom/miui/zeus/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/zeus/google/gson/internal/bind/TypeAdapters$13;->read(Lcom/miui/zeus/google/gson/stream/JsonReader;)Ljava/lang/Number;

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

    invoke-virtual {p0, p1, p2}, Lcom/miui/zeus/google/gson/internal/bind/TypeAdapters$13;->write(Lcom/miui/zeus/google/gson/stream/JsonWriter;Ljava/lang/Number;)V

    return-void
.end method
