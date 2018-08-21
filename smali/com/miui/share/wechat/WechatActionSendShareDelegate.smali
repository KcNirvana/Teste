.class public Lcom/miui/share/wechat/WechatActionSendShareDelegate;
.super Lcom/miui/share/ShareDelegate;
.source "WechatActionSendShareDelegate.java"


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/miui/share/ShareDelegate;-><init>(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public clean()V
    .locals 0

    return-void
.end method

.method protected getPackageName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "com.tencent.mm"

    return-object v0
.end method

.method public share(Landroid/content/Intent;)Z
    .locals 4

    invoke-static {p1}, Lcom/miui/share/ShareUtils;->newShareIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/share/wechat/WechatActionSendShareDelegate;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/share/wechat/WechatActionSendShareDelegate;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1, v2, v3}, Lcom/miui/share/ShareUtils;->shareIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const/4 v0, 0x2

    const/4 v1, -0x2

    invoke-static {v0, v1}, Lcom/miui/share/ShareResultManager;->notifyShareResult(II)V

    const/4 v0, 0x1

    return v0
.end method
