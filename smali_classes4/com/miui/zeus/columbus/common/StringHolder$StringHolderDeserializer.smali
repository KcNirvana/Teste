.class Lcom/miui/zeus/columbus/common/StringHolder$StringHolderDeserializer;
.super Ljava/lang/Object;
.source "StringHolder.java"

# interfaces
.implements Lcom/miui/zeus/google/gson/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/zeus/google/gson/JsonDeserializer<",
        "Lcom/miui/zeus/columbus/common/StringHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ExtraHolderDeserializer"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/miui/zeus/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/miui/zeus/google/gson/JsonDeserializationContext;)Lcom/miui/zeus/columbus/common/StringHolder;
    .locals 1

    new-instance p2, Lcom/miui/zeus/columbus/common/StringHolder;

    invoke-direct {p2}, Lcom/miui/zeus/columbus/common/StringHolder;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Lcom/miui/zeus/google/gson/JsonElement;->isJsonObject()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lcom/miui/zeus/google/gson/JsonElement;->getAsJsonObject()Lcom/miui/zeus/google/gson/JsonObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/zeus/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/miui/zeus/columbus/common/StringHolder;->value:Ljava/lang/String;

    const-string p1, "ExtraHolderDeserializer"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "JsonObject: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Lcom/miui/zeus/columbus/common/StringHolder;->value:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/miui/zeus/columbus/util/i;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/zeus/google/gson/JsonElement;->isJsonArray()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lcom/miui/zeus/google/gson/JsonElement;->getAsJsonArray()Lcom/miui/zeus/google/gson/JsonArray;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/zeus/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/miui/zeus/columbus/common/StringHolder;->value:Ljava/lang/String;

    const-string p1, "ExtraHolderDeserializer"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "JsonArray: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Lcom/miui/zeus/columbus/common/StringHolder;->value:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/miui/zeus/columbus/util/i;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/miui/zeus/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Lcom/miui/zeus/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/miui/zeus/columbus/common/StringHolder;->value:Ljava/lang/String;

    const-string p1, "ExtraHolderDeserializer"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "JsonPrimitive: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Lcom/miui/zeus/columbus/common/StringHolder;->value:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/miui/zeus/columbus/util/i;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p3, "ExtraHolderDeserializer"

    const-string v0, "deserialize exception"

    invoke-static {p3, v0, p1}, Lcom/miui/zeus/columbus/util/i;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-object p2
.end method

.method public bridge synthetic deserialize(Lcom/miui/zeus/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/miui/zeus/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/zeus/columbus/common/StringHolder$StringHolderDeserializer;->deserialize(Lcom/miui/zeus/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/miui/zeus/google/gson/JsonDeserializationContext;)Lcom/miui/zeus/columbus/common/StringHolder;

    move-result-object p1

    return-object p1
.end method
