.class public final synthetic Lcom/miui/video/service/update/-$$Lambda$AppUpdateUtils$MTGUFPQ1yq8oVYsH7pA48qkAJWo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaomi/market/sdk/XiaomiUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/video/service/update/AppUpdateUtils;

.field private final synthetic f$1:Lcom/miui/video/service/update/IAppUpdateMarket;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/video/service/update/AppUpdateUtils;Lcom/miui/video/service/update/IAppUpdateMarket;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/service/update/-$$Lambda$AppUpdateUtils$MTGUFPQ1yq8oVYsH7pA48qkAJWo;->f$0:Lcom/miui/video/service/update/AppUpdateUtils;

    iput-object p2, p0, Lcom/miui/video/service/update/-$$Lambda$AppUpdateUtils$MTGUFPQ1yq8oVYsH7pA48qkAJWo;->f$1:Lcom/miui/video/service/update/IAppUpdateMarket;

    return-void
.end method


# virtual methods
.method public final onUpdateReturned(ILcom/xiaomi/market/sdk/UpdateResponse;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/service/update/-$$Lambda$AppUpdateUtils$MTGUFPQ1yq8oVYsH7pA48qkAJWo;->f$0:Lcom/miui/video/service/update/AppUpdateUtils;

    iget-object v1, p0, Lcom/miui/video/service/update/-$$Lambda$AppUpdateUtils$MTGUFPQ1yq8oVYsH7pA48qkAJWo;->f$1:Lcom/miui/video/service/update/IAppUpdateMarket;

    invoke-static {v0, v1, p1, p2}, Lcom/miui/video/service/update/AppUpdateUtils;->lambda$startCheck$20(Lcom/miui/video/service/update/AppUpdateUtils;Lcom/miui/video/service/update/IAppUpdateMarket;ILcom/xiaomi/market/sdk/UpdateResponse;)V

    return-void
.end method
