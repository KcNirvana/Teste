.class public abstract Lcom/miui/video/base/widget/CoreFragmentActivity;
.super Lcom/miui/video/base/widget/BaseFragmentActivity;
.source "CoreFragmentActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/base/widget/BaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected initActivityCategory()V
    .locals 0

    return-void
.end method

.method protected isCanFocus()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/video/base/widget/BaseFragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/miui/video/base/widget/CoreFragmentActivity;->initActivityCategory()V

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/video/common/library/utils/DeviceUtils;->initScreen(Landroid/content/Context;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/video/base/widget/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/base/widget/BaseFragmentActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/base/widget/BaseFragmentActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/base/widget/BaseFragmentActivity;->onResume()V

    return-void
.end method

.method public setActivityCategory(I)V
    .locals 0

    return-void
.end method

.method public setActivityMessageType(I)V
    .locals 0

    return-void
.end method
