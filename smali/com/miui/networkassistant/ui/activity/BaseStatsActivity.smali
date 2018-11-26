.class public abstract Lcom/miui/networkassistant/ui/activity/BaseStatsActivity;
.super Lcom/miui/common/a/a/e;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/a/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/common/a/a/e;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/miui/networkassistant/ui/activity/BaseStatsActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/activity/BaseStatsActivity$1;-><init>(Lcom/miui/networkassistant/ui/activity/BaseStatsActivity;)V

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/activity/BaseStatsActivity;->postOnIdleUiThread(Landroid/os/MessageQueue$IdleHandler;)V

    invoke-static {p0}, Lcom/miui/networkassistant/utils/PrivacyDeclareAndAllowNetworkUtil;->showSecurityCenterAllowNetwork(Landroid/app/Activity;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/miui/common/a/a/e;->onPause()V

    invoke-static {}, Lcom/miui/analytics/AnalyticsUtil;->recordPageEnd()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/miui/common/a/a/e;->onResume()V

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/activity/BaseStatsActivity;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/analytics/AnalyticsUtil;->recordPageStart(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
