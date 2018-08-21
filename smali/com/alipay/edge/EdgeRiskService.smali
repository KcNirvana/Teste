.class public abstract Lcom/alipay/edge/EdgeRiskService;
.super Ljava/lang/Object;
.source "EdgeRiskService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getRiskResult(Ljava/lang/String;Ljava/util/Map;I)Lcom/alipay/edge/face/EdgeRiskResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Lcom/alipay/edge/face/EdgeRiskResult;"
        }
    .end annotation
.end method

.method public abstract initialize(Landroid/content/Context;)I
.end method

.method public abstract postUserAction(Ljava/lang/String;Ljava/util/Map;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract syncWithServerNow()V
.end method

.method public abstract updateResource(Ljava/lang/String;)V
.end method
