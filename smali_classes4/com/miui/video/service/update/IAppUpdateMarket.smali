.class public abstract Lcom/miui/video/service/update/IAppUpdateMarket;
.super Ljava/lang/Object;
.source "IAppUpdateMarket.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract cancelUpdate()V
.end method

.method public abstract release()V
.end method

.method public abstract setUpdateListener(Lcom/xiaomi/market/sdk/XiaomiUpdateListener;)V
.end method

.method public abstract startCheckVersion(Landroid/content/Context;)V
.end method

.method public abstract startUpdate(Landroid/content/Context;)V
.end method
