.class Lcom/miui/zeus/columbus/common/StringHolder$StringHolderSerializer;
.super Ljava/lang/Object;
.source "StringHolder.java"

# interfaces
.implements Lcom/miui/zeus/google/gson/JsonSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/zeus/google/gson/JsonSerializer<",
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
.method public serialize(Lcom/miui/zeus/columbus/common/StringHolder;Ljava/lang/reflect/Type;Lcom/miui/zeus/google/gson/JsonSerializationContext;)Lcom/miui/zeus/google/gson/JsonElement;
    .locals 1

    if-eqz p1, :cond_1

    iget-object p2, p1, Lcom/miui/zeus/columbus/common/StringHolder;->value:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "ExtraHolderDeserializer"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "serialize: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/miui/zeus/columbus/common/StringHolder;->value:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/miui/zeus/columbus/util/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/miui/zeus/google/gson/JsonPrimitive;

    iget-object p1, p1, Lcom/miui/zeus/columbus/common/StringHolder;->value:Ljava/lang/String;

    invoke-direct {p2, p1}, Lcom/miui/zeus/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    return-object p2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/miui/zeus/google/gson/JsonSerializationContext;)Lcom/miui/zeus/google/gson/JsonElement;
    .locals 0

    check-cast p1, Lcom/miui/zeus/columbus/common/StringHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/zeus/columbus/common/StringHolder$StringHolderSerializer;->serialize(Lcom/miui/zeus/columbus/common/StringHolder;Ljava/lang/reflect/Type;Lcom/miui/zeus/google/gson/JsonSerializationContext;)Lcom/miui/zeus/google/gson/JsonElement;

    move-result-object p1

    return-object p1
.end method
