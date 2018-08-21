.class public Lcom/miui/share/weibo/WeiboSdkShareDelegate;
.super Lcom/miui/share/ShareDelegate;
.source "WeiboSdkShareDelegate.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiShare"


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    const v0, 0x10003

    invoke-direct {p0, v0, p1}, Lcom/miui/share/ShareDelegate;-><init>(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static share(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 1

    const-class v0, Lcom/miui/share/weibo/WeiboShareActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string/jumbo v0, "com.miui.share.extra.config"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public clean()V
    .locals 1

    iget-object v0, p0, Lcom/miui/share/weibo/WeiboSdkShareDelegate;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/miui/share/weibo/WeiboAuth;->clean(Landroid/content/Context;)V

    return-void
.end method

.method protected getPackageName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "com.sina.weibo"

    return-object v0
.end method

.method public share(Landroid/content/Intent;)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/share/weibo/WeiboSdkShareDelegate;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/miui/share/ShareUtils;->newShareIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/share/weibo/WeiboSdkShareDelegate;->mShareConfiguration:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/miui/share/weibo/WeiboSdkShareDelegate;->share(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;)V

    const/4 v0, 0x1

    return v0
.end method
