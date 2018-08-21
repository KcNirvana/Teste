.class public Lcom/miui/share/MiuiShare;
.super Ljava/lang/Object;
.source "MiuiShare.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiShare"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clean()V
    .locals 0

    invoke-static {}, Lcom/miui/share/ShareDelegateManager;->clean()V

    return-void
.end method

.method public static clean(I)V
    .locals 0

    invoke-static {p0}, Lcom/miui/share/ShareDelegateManager;->clean(I)V

    return-void
.end method

.method public static isShareAvailable(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;I)Z
    .locals 1

    invoke-static {p3, p0, p2, p1}, Lcom/miui/share/ShareDelegateManager;->isShareAvailable(ILandroid/app/Activity;Landroid/os/Bundle;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public static setCustomizedShareDelegate(ILcom/miui/share/ShareDelegate;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/share/ShareDelegateManager;->setCustomizedShareDelegate(ILcom/miui/share/ShareDelegate;)V

    return-void
.end method

.method public static setShareResultListener(Lcom/miui/share/OnShareResultListener;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/share/ShareResultManager;->setShareResultListener(Lcom/miui/share/OnShareResultListener;)V

    return-void
.end method

.method public static setWechatShareResult(Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/share/wechat/WechatShareDelegate;->setResult(Landroid/content/Intent;)Z

    return-void
.end method

.method public static share(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;I)Z
    .locals 1

    invoke-static {p3, p0, p2, p1}, Lcom/miui/share/ShareDelegateManager;->share(ILandroid/app/Activity;Landroid/os/Bundle;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public static showShareChooser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Z
    .locals 4

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_1

    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/miui/share/chooser/ShareChooserActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "com.miui.share.extra.intent"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v2, "com.miui.share.extra.config"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    check-cast p0, Landroid/app/Activity;

    sget v2, Lcom/miui/share/R$anim;->activity_open_enter:I

    sget v3, Lcom/miui/share/R$anim;->activity_open_exit:I

    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const-string/jumbo v2, "MiuiShare"

    const-string/jumbo v3, "activity is destroy"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/miui/share/chooser/ShareChooserActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "com.miui.share.extra.intent"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v2, "com.miui.share.extra.config"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "MiuiShare"

    const-string/jumbo v3, "context is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
