.class final Lcom/xiaomi/market/sdk/DownloadInstallResultNotifier$1;
.super Ljava/lang/Object;
.source "DownloadInstallResultNotifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/market/sdk/DownloadInstallResultNotifier;->showToast(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$resId:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/market/sdk/DownloadInstallResultNotifier$1;->val$resId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/xiaomi/market/sdk/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/market/sdk/DownloadInstallResultNotifier$1;->val$resId:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
