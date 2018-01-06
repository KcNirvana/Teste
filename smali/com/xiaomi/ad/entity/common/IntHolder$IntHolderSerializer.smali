.class Lcom/xiaomi/ad/entity/common/IntHolder$IntHolderSerializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/ad/entity/common/IntHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IntHolderSerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/ac",
        "<",
        "Lcom/xiaomi/ad/entity/common/IntHolder;",
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
.method public serialize(Lcom/xiaomi/ad/entity/common/IntHolder;Ljava/lang/reflect/Type;Lcom/a/a/ab;)Lcom/a/a/v;
    .locals 3

    const-string v0, "IntHolderSerializer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IntHolder serialize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/xiaomi/ad/entity/common/IntHolder;->value:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/ad/internal/common/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/a/a/aa;

    iget v1, p1, Lcom/xiaomi/ad/entity/common/IntHolder;->value:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/aa;-><init>(Ljava/lang/Number;)V

    return-object v0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/a/a/ab;)Lcom/a/a/v;
    .locals 1

    check-cast p1, Lcom/xiaomi/ad/entity/common/IntHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/ad/entity/common/IntHolder$IntHolderSerializer;->serialize(Lcom/xiaomi/ad/entity/common/IntHolder;Ljava/lang/reflect/Type;Lcom/a/a/ab;)Lcom/a/a/v;

    move-result-object v0

    return-object v0
.end method
