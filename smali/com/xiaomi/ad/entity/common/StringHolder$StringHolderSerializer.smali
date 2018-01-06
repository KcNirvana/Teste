.class Lcom/xiaomi/ad/entity/common/StringHolder$StringHolderSerializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/ad/entity/common/StringHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StringHolderSerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/ac",
        "<",
        "Lcom/xiaomi/ad/entity/common/StringHolder;",
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
.method public serialize(Lcom/xiaomi/ad/entity/common/StringHolder;Ljava/lang/reflect/Type;Lcom/a/a/ab;)Lcom/a/a/v;
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/xiaomi/ad/entity/common/StringHolder;->value:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "ExtraHolderDeserializer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serialize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/xiaomi/ad/entity/common/StringHolder;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/ad/internal/common/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/a/a/aa;

    iget-object v1, p1, Lcom/xiaomi/ad/entity/common/StringHolder;->value:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/a/a/aa;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/a/a/ab;)Lcom/a/a/v;
    .locals 1

    check-cast p1, Lcom/xiaomi/ad/entity/common/StringHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/ad/entity/common/StringHolder$StringHolderSerializer;->serialize(Lcom/xiaomi/ad/entity/common/StringHolder;Ljava/lang/reflect/Type;Lcom/a/a/ab;)Lcom/a/a/v;

    move-result-object v0

    return-object v0
.end method
