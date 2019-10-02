.class final Lcom/miui/zeus/google/gson/internal/bind/TypeAdapters$29;
.super Lcom/miui/zeus/google/gson/TypeAdapter;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/zeus/google/gson/TypeAdapter<",
        "Lcom/miui/zeus/google/gson/JsonElement;",
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
.method public read(Lcom/miui/zeus/google/gson/stream/JsonReader;)Lcom/miui/zeus/google/gson/JsonElement;
    .locals 3

    sget-object v0, Lcom/miui/zeus/google/gson/internal/bind/TypeAdapters$36;->$SwitchMap$com$google$gson$stream$JsonToken:[I

    invoke-virtual {p1}, Lcom/miui/zeus/google/gson/stream/JsonReader;->peek()Lcom/miui/zeus/google/gson/stream/JsonToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/zeus/google/gson/stream/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_0
    new-instance v0, Lcom/miui/zeus/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/miui/zeus/google/gson/JsonObject;-><init>()V

    invoke-virtual {p1}, Lcom/miui/zeus/google/gson/stream/JsonReader;->beginObject()V

    :goto_0
    invoke-virtual {p1}, Lcom/miui/zeus/google/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/miui/zeus/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/miui/zeus/google/gson/internal/bind/TypeAdapters$29;->read(Lcom/miui/zeus/google/gson/stream/JsonReader;)Lcom/miui/zeus/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/zeus/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/miui/zeus/google/gson/JsonElement;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/zeus/google/gson/stream/JsonReader;->endObject()V

    return-object v0

    :pswitch_1
    new-instance v0, Lcom/miui/zeus/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/miui/zeus/google/gson/JsonArray;-><init>()V

    invoke-virtual {p1}, Lcom/miui/zeus/google/gson/stream/JsonReader;->beginArray()V

    :goto_1
    invoke-virtual {p1}, Lcom/miui/zeus/google/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/miui/zeus/google/gson/internal/bind/TypeAdapters$29;->read(Lcom/miui/zeus/google/gson/stream/JsonReader;)Lcom/miui/zeus/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/zeus/google/gson/JsonArray;->add(Lcom/miui/zeus/google/gson/JsonElement;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/miui/zeus/google/gson/stream/JsonReader;->endArray()V

    return-object v0

    :pswitch_2
    invoke-virtual {p1}, Lcom/miui/zeus/google/gson/stream/JsonReader;->nextNull()V

    sget-object p1, Lcom/miui/zeus/google/gson/JsonNull;->INSTANCE:Lcom/miui/zeus/google/gson/JsonNull;

    return-object p1

    :pswitch_3
    new-instance v0, Lcom/miui/zeus/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/miui/zeus/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/miui/zeus/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_4
    new-instance v0, Lcom/miui/zeus/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/miui/zeus/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/miui/zeus/google/gson/JsonPrimitive;-><init>(Ljava/lang/Boolean;)V

    return-object v0

    :pswitch_5
    invoke-virtual {p1}, Lcom/miui/zeus/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/miui/zeus/google/gson/JsonPrimitive;

    new-instance v1, Lcom/miui/zeus/google/gson/internal/LazilyParsedNumber;

    invoke-direct {v1, p1}, Lcom/miui/zeus/google/gson/internal/LazilyParsedNumber;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/miui/zeus/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic read(Lcom/miui/zeus/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/zeus/google/gson/internal/bind/TypeAdapters$29;->read(Lcom/miui/zeus/google/gson/stream/JsonReader;)Lcom/miui/zeus/google/gson/JsonElement;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/miui/zeus/google/gson/stream/JsonWriter;Lcom/miui/zeus/google/gson/JsonElement;)V
    .locals 2

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcom/miui/zeus/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p2}, Lcom/miui/zeus/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/miui/zeus/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/miui/zeus/google/gson/JsonPrimitive;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/zeus/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/miui/zeus/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/zeus/google/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/miui/zeus/google/gson/stream/JsonWriter;

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p2}, Lcom/miui/zeus/google/gson/JsonPrimitive;->isBoolean()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/miui/zeus/google/gson/JsonPrimitive;->getAsBoolean()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/miui/zeus/google/gson/stream/JsonWriter;->value(Z)Lcom/miui/zeus/google/gson/stream/JsonWriter;

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p2}, Lcom/miui/zeus/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/zeus/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/miui/zeus/google/gson/stream/JsonWriter;

    goto/16 :goto_3

    :cond_3
    invoke-virtual {p2}, Lcom/miui/zeus/google/gson/JsonElement;->isJsonArray()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/miui/zeus/google/gson/stream/JsonWriter;->beginArray()Lcom/miui/zeus/google/gson/stream/JsonWriter;

    invoke-virtual {p2}, Lcom/miui/zeus/google/gson/JsonElement;->getAsJsonArray()Lcom/miui/zeus/google/gson/JsonArray;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/zeus/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/zeus/google/gson/JsonElement;

    invoke-virtual {p0, p1, v0}, Lcom/miui/zeus/google/gson/internal/bind/TypeAdapters$29;->write(Lcom/miui/zeus/google/gson/stream/JsonWriter;Lcom/miui/zeus/google/gson/JsonElement;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/miui/zeus/google/gson/stream/JsonWriter;->endArray()Lcom/miui/zeus/google/gson/stream/JsonWriter;

    goto :goto_3

    :cond_5
    invoke-virtual {p2}, Lcom/miui/zeus/google/gson/JsonElement;->isJsonObject()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/miui/zeus/google/gson/stream/JsonWriter;->beginObject()Lcom/miui/zeus/google/gson/stream/JsonWriter;

    invoke-virtual {p2}, Lcom/miui/zeus/google/gson/JsonElement;->getAsJsonObject()Lcom/miui/zeus/google/gson/JsonObject;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/zeus/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/miui/zeus/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/miui/zeus/google/gson/stream/JsonWriter;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/zeus/google/gson/JsonElement;

    invoke-virtual {p0, p1, v0}, Lcom/miui/zeus/google/gson/internal/bind/TypeAdapters$29;->write(Lcom/miui/zeus/google/gson/stream/JsonWriter;Lcom/miui/zeus/google/gson/JsonElement;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lcom/miui/zeus/google/gson/stream/JsonWriter;->endObject()Lcom/miui/zeus/google/gson/stream/JsonWriter;

    goto :goto_3

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t write "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_2
    invoke-virtual {p1}, Lcom/miui/zeus/google/gson/stream/JsonWriter;->nullValue()Lcom/miui/zeus/google/gson/stream/JsonWriter;

    :goto_3
    return-void
.end method

.method public bridge synthetic write(Lcom/miui/zeus/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/miui/zeus/google/gson/JsonElement;

    invoke-virtual {p0, p1, p2}, Lcom/miui/zeus/google/gson/internal/bind/TypeAdapters$29;->write(Lcom/miui/zeus/google/gson/stream/JsonWriter;Lcom/miui/zeus/google/gson/JsonElement;)V

    return-void
.end method
