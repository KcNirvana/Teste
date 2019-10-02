.class Lcom/miui/zeus/columbus/common/IntHolder$IntHolderDeserializer;
.super Ljava/lang/Object;
.source "IntHolder.java"

# interfaces
.implements Lcom/miui/zeus/google/gson/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/zeus/google/gson/JsonDeserializer<",
        "Lcom/miui/zeus/columbus/common/IntHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IntHolderDeserializer"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/miui/zeus/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/miui/zeus/google/gson/JsonDeserializationContext;)Lcom/miui/zeus/columbus/common/IntHolder;
    .locals 1

    new-instance p2, Lcom/miui/zeus/columbus/common/IntHolder;

    invoke-direct {p2}, Lcom/miui/zeus/columbus/common/IntHolder;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Lcom/miui/zeus/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lcom/miui/zeus/google/gson/JsonElement;->getAsInt()I

    move-result p1

    iput p1, p2, Lcom/miui/zeus/columbus/common/IntHolder;->value:I

    const-string p1, "IntHolderDeserializer"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IntHolder JsonPrimitive: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Lcom/miui/zeus/columbus/common/IntHolder;->value:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/miui/zeus/columbus/util/i;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p3, "IntHolderDeserializer"

    const-string v0, "IntHolder deserialize exception"

    invoke-static {p3, v0, p1}, Lcom/miui/zeus/columbus/util/i;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-object p2
.end method

.method public bridge synthetic deserialize(Lcom/miui/zeus/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/miui/zeus/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/zeus/columbus/common/IntHolder$IntHolderDeserializer;->deserialize(Lcom/miui/zeus/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/miui/zeus/google/gson/JsonDeserializationContext;)Lcom/miui/zeus/columbus/common/IntHolder;

    move-result-object p1

    return-object p1
.end method
