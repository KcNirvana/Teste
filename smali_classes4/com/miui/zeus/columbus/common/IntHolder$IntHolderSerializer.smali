.class Lcom/miui/zeus/columbus/common/IntHolder$IntHolderSerializer;
.super Ljava/lang/Object;
.source "IntHolder.java"

# interfaces
.implements Lcom/miui/zeus/google/gson/JsonSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/zeus/google/gson/JsonSerializer<",
        "Lcom/miui/zeus/columbus/common/IntHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IntHolderSerializer"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serialize(Lcom/miui/zeus/columbus/common/IntHolder;Ljava/lang/reflect/Type;Lcom/miui/zeus/google/gson/JsonSerializationContext;)Lcom/miui/zeus/google/gson/JsonElement;
    .locals 1

    const-string p2, "IntHolderSerializer"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IntHolder serialize: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/miui/zeus/columbus/common/IntHolder;->value:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/miui/zeus/columbus/util/i;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/miui/zeus/google/gson/JsonPrimitive;

    iget p1, p1, Lcom/miui/zeus/columbus/common/IntHolder;->value:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/zeus/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    return-object p2
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/miui/zeus/google/gson/JsonSerializationContext;)Lcom/miui/zeus/google/gson/JsonElement;
    .locals 0

    check-cast p1, Lcom/miui/zeus/columbus/common/IntHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/zeus/columbus/common/IntHolder$IntHolderSerializer;->serialize(Lcom/miui/zeus/columbus/common/IntHolder;Ljava/lang/reflect/Type;Lcom/miui/zeus/google/gson/JsonSerializationContext;)Lcom/miui/zeus/google/gson/JsonElement;

    move-result-object p1

    return-object p1
.end method
