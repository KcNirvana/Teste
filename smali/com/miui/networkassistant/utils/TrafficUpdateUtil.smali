.class public Lcom/miui/networkassistant/utils/TrafficUpdateUtil;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static broadCastTrafficUpdated(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.miui.action.NETWORK_POLICY_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/common/b/f;->aHO()I

    move-result v1

    invoke-static {v1}, Lcom/miui/common/b/f;->aHV(I)Landroid/os/UserHandle;

    move-result-object v1

    const-string/jumbo v2, "miui.permission.EXTRA_NETWORK"

    invoke-static {p0, v0, v1, v2}, Lcom/miui/common/b/n;->aIL(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method
