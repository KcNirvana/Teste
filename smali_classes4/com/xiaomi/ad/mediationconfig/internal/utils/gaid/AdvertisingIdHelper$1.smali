.class Lcom/xiaomi/ad/mediationconfig/internal/utils/gaid/AdvertisingIdHelper$1;
.super Lcom/xiaomi/ad/mediationconfig/internal/utils/ThrowableCaughtRunnable;
.source "AdvertisingIdHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/ad/mediationconfig/internal/utils/gaid/AdvertisingIdHelper;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/ad/mediationconfig/internal/utils/gaid/AdvertisingIdHelper;


# direct methods
.method constructor <init>(Lcom/xiaomi/ad/mediationconfig/internal/utils/gaid/AdvertisingIdHelper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/gaid/AdvertisingIdHelper$1;->a:Lcom/xiaomi/ad/mediationconfig/internal/utils/gaid/AdvertisingIdHelper;

    invoke-direct {p0, p2, p3}, Lcom/xiaomi/ad/mediationconfig/internal/utils/ThrowableCaughtRunnable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/gaid/AdvertisingIdHelper$1;->a:Lcom/xiaomi/ad/mediationconfig/internal/utils/gaid/AdvertisingIdHelper;

    invoke-static {v0}, Lcom/xiaomi/ad/mediationconfig/internal/utils/gaid/AdvertisingIdHelper;->a(Lcom/xiaomi/ad/mediationconfig/internal/utils/gaid/AdvertisingIdHelper;)V

    return-void
.end method
