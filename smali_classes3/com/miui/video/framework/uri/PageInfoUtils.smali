.class public Lcom/miui/video/framework/uri/PageInfoUtils;
.super Ljava/lang/Object;
.source "PageInfoUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/framework/uri/PageInfoUtils$IPageInfo;
    }
.end annotation


# static fields
.field private static mRef:Ljava/lang/String; = "com.miui.videoplayer"

.field private static sAppOnlineStartRef:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppOnlineStartRef()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/video/framework/uri/PageInfoUtils;->sAppOnlineStartRef:Ljava/lang/String;

    return-object v0
.end method

.method public static getIntentRefer(Landroid/content/Context;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object p0, Lcom/miui/video/framework/uri/PageInfoUtils;->mRef:Ljava/lang/String;

    return-object p0
.end method

.method public static getPageRefer(Landroid/content/Intent;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object p0, Lcom/miui/video/framework/uri/PageInfoUtils;->mRef:Ljava/lang/String;

    return-object p0
.end method

.method public static getPageRefer(Landroid/support/v4/app/Fragment;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object p0, Lcom/miui/video/framework/uri/PageInfoUtils;->mRef:Ljava/lang/String;

    return-object p0
.end method

.method public static getRef()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/video/framework/uri/PageInfoUtils;->mRef:Ljava/lang/String;

    return-object v0
.end method

.method public static setAppOnlineStartRef(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/miui/video/framework/uri/PageInfoUtils;->sAppOnlineStartRef:Ljava/lang/String;

    return-void
.end method

.method public static setIntentRefer(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, "ref"

    invoke-static {p0}, Lcom/miui/video/framework/uri/PageInfoUtils;->getIntentRefer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public static setRef(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sput-object p0, Lcom/miui/video/framework/uri/PageInfoUtils;->mRef:Ljava/lang/String;

    sget-object p0, Lcom/miui/video/framework/uri/PageInfoUtils;->mRef:Ljava/lang/String;

    invoke-static {p0}, Lcom/miui/video/framework/uri/PageInfoUtils;->setAppOnlineStartRef(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setRefToIntent(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ref"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Lcom/miui/video/framework/uri/PageInfoUtils;->setRef(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
