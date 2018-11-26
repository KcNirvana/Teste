.class public Lcom/miui/common/network/e;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aLR(Landroid/content/Context;Z)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz p1, :cond_0

    new-instance v1, Lcom/miui/common/network/j;

    invoke-direct {v1}, Lcom/miui/common/network/j;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v3, v2, v1}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    goto :goto_0
.end method
