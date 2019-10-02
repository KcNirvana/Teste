.class final Lcom/xiaomi/market/sdk/Utils$1;
.super Lcom/xiaomi/market/sdk/Singleton;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/market/sdk/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/market/sdk/Singleton<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/market/sdk/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/market/sdk/Utils$1;->create()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected create()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/xiaomi/market/sdk/Client;->isMiui()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/xiaomi/market/sdk/Client;->isInternationalMiui()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, "com.xiaomi.market"

    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method
