.class Lcom/xiaomi/market/sdk/DownloadInstallResultNotifier;
.super Ljava/lang/Object;
.source "DownloadInstallResultNotifier.java"


# static fields
.field public static final ERROR_CONNECT_DOWNLOAD_MANAGER:I = -0x2

.field public static final ERROR_SDCARD_NOT_AVAILABLE:I = -0x1


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static notifyResult(I)V
    .locals 0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget p0, Lcom/xiaomi/market/sdk/R$string;->xiaomi_update_sdk_external_storage_unavailable:I

    invoke-static {p0}, Lcom/xiaomi/market/sdk/DownloadInstallResultNotifier;->showToast(I)V

    goto :goto_0

    :pswitch_1
    sget p0, Lcom/xiaomi/market/sdk/R$string;->xiaomi_update_sdk_connect_download_manager_fail:I

    invoke-static {p0}, Lcom/xiaomi/market/sdk/DownloadInstallResultNotifier;->showToast(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static showToast(I)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/xiaomi/market/sdk/DownloadInstallResultNotifier$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/market/sdk/DownloadInstallResultNotifier$1;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
