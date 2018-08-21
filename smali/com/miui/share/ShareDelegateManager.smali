.class public Lcom/miui/share/ShareDelegateManager;
.super Ljava/lang/Object;
.source "ShareDelegateManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShareDelegateManager"

.field private static mShareDelegateArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/miui/share/ShareDelegate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/miui/share/ShareDelegateManager;->mShareDelegateArray:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clean()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/miui/share/ShareDelegateManager;->mShareDelegateArray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/miui/share/ShareDelegateManager;->mShareDelegateArray:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Lcom/miui/share/ShareDelegateManager;->clean(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static clean(I)V
    .locals 2

    sget-object v1, Lcom/miui/share/ShareDelegateManager;->mShareDelegateArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/share/ShareDelegate;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/share/ShareDelegate;->clean()V

    :cond_0
    sget-object v1, Lcom/miui/share/ShareDelegateManager;->mShareDelegateArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method public static create(ILandroid/os/Bundle;)Lcom/miui/share/ShareDelegate;
    .locals 2

    if-eqz p1, :cond_0

    sparse-switch p0, :sswitch_data_0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "The share flag is NOT Support!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    new-instance v0, Lcom/miui/share/weibo/WeiboActionSendShareDelegate;

    invoke-direct {v0, p1}, Lcom/miui/share/weibo/WeiboActionSendShareDelegate;-><init>(Landroid/os/Bundle;)V

    :goto_0
    return-object v0

    :sswitch_1
    new-instance v0, Lcom/miui/share/weibo/WeiboSdkShareDelegate;

    invoke-direct {v0, p1}, Lcom/miui/share/weibo/WeiboSdkShareDelegate;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/miui/share/wechat/WechatActionSendShareDelegate;

    invoke-direct {v0, p1}, Lcom/miui/share/wechat/WechatActionSendShareDelegate;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :sswitch_3
    new-instance v0, Lcom/miui/share/wechat/WechatShareDelegate;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/miui/share/wechat/WechatShareDelegate;-><init>(Landroid/os/Bundle;Z)V

    goto :goto_0

    :sswitch_4
    new-instance v0, Lcom/miui/share/wechat/WechatShareDelegate;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/miui/share/wechat/WechatShareDelegate;-><init>(Landroid/os/Bundle;Z)V

    goto :goto_0

    :sswitch_5
    new-instance v0, Lcom/miui/share/SystemShareDelegate;

    invoke-direct {v0, p1}, Lcom/miui/share/SystemShareDelegate;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_5
        0x2 -> :sswitch_2
        0x3 -> :sswitch_0
        0x10002 -> :sswitch_3
        0x10003 -> :sswitch_1
        0x10102 -> :sswitch_4
    .end sparse-switch
.end method

.method public static getShareDelegate(ILandroid/app/Activity;Landroid/os/Bundle;)Lcom/miui/share/ShareDelegate;
    .locals 2

    sget-object v1, Lcom/miui/share/ShareDelegateManager;->mShareDelegateArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/share/ShareDelegate;

    if-nez v0, :cond_0

    invoke-static {p0, p2}, Lcom/miui/share/ShareDelegateManager;->create(ILandroid/os/Bundle;)Lcom/miui/share/ShareDelegate;

    move-result-object v0

    sget-object v1, Lcom/miui/share/ShareDelegateManager;->mShareDelegateArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/share/ShareDelegate;->setActivity(Landroid/app/Activity;)V

    return-object v0
.end method

.method static isShareAvailable(ILandroid/app/Activity;Landroid/os/Bundle;Landroid/content/Intent;)Z
    .locals 3

    const/4 v1, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/miui/share/ShareDelegateManager;->getShareDelegate(ILandroid/app/Activity;Landroid/os/Bundle;)Lcom/miui/share/ShareDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p3}, Lcom/miui/share/ShareDelegate;->isShareAvailable(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static resolveIntent(ILandroid/content/Intent;)Landroid/content/Intent;
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    if-nez p0, :cond_2

    const-string/jumbo v2, "com.miui.share.extra.intent_overlay_more"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    move-object p1, v0

    :cond_1
    return-object p1

    :cond_2
    invoke-static {p0}, Lcom/miui/share/ShareType;->getShareType(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string/jumbo v2, "com.miui.share.extra.intent_overlay_wechat"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-static {p0}, Lcom/miui/share/ShareType;->getShareSubType(I)I

    move-result v2

    if-ne v2, v3, :cond_0

    const-string/jumbo v2, "com.miui.share.extra.intent_overlay_wechat_timeline"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :pswitch_1
    invoke-static {p0}, Lcom/miui/share/ShareType;->getShareChannel(I)I

    move-result v2

    if-ne v2, v3, :cond_3

    const-string/jumbo v2, "com.miui.share.extra.intent_overlay_weibo_sdk"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/miui/share/ShareType;->getShareChannel(I)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const-string/jumbo v2, "com.miui.share.extra.intent_overlay_weibo_sdk_server"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static setCustomizedShareDelegate(ILcom/miui/share/ShareDelegate;)V
    .locals 1

    sget-object v0, Lcom/miui/share/ShareDelegateManager;->mShareDelegateArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method static share(ILandroid/app/Activity;Landroid/os/Bundle;Landroid/content/Intent;)Z
    .locals 3

    const/4 v1, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/miui/share/ShareDelegateManager;->getShareDelegate(ILandroid/app/Activity;Landroid/os/Bundle;)Lcom/miui/share/ShareDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0, p3}, Lcom/miui/share/ShareDelegateManager;->resolveIntent(ILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/share/ShareDelegate;->share(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method
