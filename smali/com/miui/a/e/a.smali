.class public final Lcom/miui/a/e/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buc(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$AntiSpam;->setAntiSpamEnableForSim(Landroid/content/Context;IZ)V

    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->isAntiSpamSettingsSharedForSims(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$AntiSpam;->setAntiSpamEnableForSim(Landroid/content/Context;IZ)V

    :cond_0
    return-void
.end method
