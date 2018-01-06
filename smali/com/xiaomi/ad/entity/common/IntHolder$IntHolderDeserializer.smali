.class Lcom/xiaomi/ad/entity/common/IntHolder$IntHolderDeserializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/ad/entity/common/IntHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IntHolderDeserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/u",
        "<",
        "Lcom/xiaomi/ad/entity/common/IntHolder;",
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
.method public deserialize(Lcom/a/a/v;Ljava/lang/reflect/Type;Lcom/a/a/t;)Lcom/xiaomi/ad/entity/common/IntHolder;
    .locals 4

    new-instance v1, Lcom/xiaomi/ad/entity/common/IntHolder;

    invoke-direct {v1}, Lcom/xiaomi/ad/entity/common/IntHolder;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Lcom/a/a/v;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/a/a/v;->e()I

    move-result v0

    iput v0, v1, Lcom/xiaomi/ad/entity/common/IntHolder;->value:I

    const-string v0, "IntHolderDeserializer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IntHolder JsonPrimitive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/xiaomi/ad/entity/common/IntHolder;->value:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/ad/internal/common/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v2, "IntHolderDeserializer"

    const-string v3, "IntHolder deserialize exception"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/ad/internal/common/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public bridge synthetic deserialize(Lcom/a/a/v;Ljava/lang/reflect/Type;Lcom/a/a/t;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/ad/entity/common/IntHolder$IntHolderDeserializer;->deserialize(Lcom/a/a/v;Ljava/lang/reflect/Type;Lcom/a/a/t;)Lcom/xiaomi/ad/entity/common/IntHolder;

    move-result-object v0

    return-object v0
.end method
