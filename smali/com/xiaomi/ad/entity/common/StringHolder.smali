.class public Lcom/xiaomi/ad/entity/common/StringHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/ad/entity/common/StringHolder$StringHolderSerializer;,
        Lcom/xiaomi/ad/entity/common/StringHolder$StringHolderDeserializer;
    }
.end annotation


# instance fields
.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 2

    const-class v0, Lcom/xiaomi/ad/entity/common/StringHolder;

    new-instance v1, Lcom/xiaomi/ad/entity/common/StringHolder$StringHolderSerializer;

    invoke-direct {v1}, Lcom/xiaomi/ad/entity/common/StringHolder$StringHolderSerializer;-><init>()V

    invoke-static {v0, v1}, Lcom/xiaomi/ad/entity/util/GsonUtils;->registerJsonSerializer(Ljava/lang/Class;Lcom/a/a/ac;)V

    const-class v0, Lcom/xiaomi/ad/entity/common/StringHolder;

    new-instance v1, Lcom/xiaomi/ad/entity/common/StringHolder$StringHolderDeserializer;

    invoke-direct {v1}, Lcom/xiaomi/ad/entity/common/StringHolder$StringHolderDeserializer;-><init>()V

    invoke-static {v0, v1}, Lcom/xiaomi/ad/entity/util/GsonUtils;->registerJsonDeserializer(Ljava/lang/Class;Lcom/a/a/u;)V

    return-void
.end method
