.class public Lcom/xiaomi/ad/entity/unified/UnifiedAdResponse;
.super Lcom/xiaomi/ad/entity/contract/AdResponseEntityBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/ad/entity/contract/AdResponseEntityBase",
        "<",
        "Lcom/xiaomi/ad/entity/unified/UnifiedAdInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final GSON_CONTENT_VERSION:D = 1.0

.field private static final TAG:Ljava/lang/String; = "UnifiedAdResponse"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/ad/entity/contract/AdResponseEntityBase;-><init>()V

    return-void
.end method

.method public static final deserialize(Ljava/lang/String;)Lcom/xiaomi/ad/entity/unified/UnifiedAdResponse;
    .locals 2

    const-class v0, Lcom/xiaomi/ad/entity/unified/UnifiedAdResponse;

    const-string v1, "UnifiedAdResponse"

    invoke-static {v0, p0, v1}, Lcom/xiaomi/ad/entity/util/GsonUtils;->fromJsonString(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/ad/entity/contract/IGsonEntity;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/ad/entity/unified/UnifiedAdResponse;

    return-object v0
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "UnifiedAdResponse"

    return-object v0
.end method
