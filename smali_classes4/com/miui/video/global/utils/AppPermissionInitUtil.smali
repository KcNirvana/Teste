.class public Lcom/miui/video/global/utils/AppPermissionInitUtil;
.super Ljava/lang/Object;
.source "AppPermissionInitUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/global/utils/AppPermissionInitUtil$ICheckResultListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/miui/video/global/utils/AppPermissionInitUtil$ICheckResultListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private afterPermissionGranted()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/global/utils/AppPermissionInitUtil;->mListener:Lcom/miui/video/global/utils/AppPermissionInitUtil$ICheckResultListener;

    invoke-static {v0}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/global/utils/AppPermissionInitUtil;->mListener:Lcom/miui/video/global/utils/AppPermissionInitUtil$ICheckResultListener;

    invoke-interface {v0}, Lcom/miui/video/global/utils/AppPermissionInitUtil$ICheckResultListener;->onAllPermissionEnable()V

    :cond_0
    return-void
.end method

.method private grantPermission(Landroid/app/Activity;)V
    .locals 1

    invoke-static {p1}, Lcom/miui/video/base/utils/PermissionUtils;->isAllPermissionGrant(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/video/global/utils/AppPermissionInitUtil;->afterPermissionGranted()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/video/base/utils/PermissionUtils;->requestAllPermissions(Landroid/app/Activity;I)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$11QWY0x6jKkUeeWl8gJ0XAPFimU(Lcom/miui/video/global/utils/AppPermissionInitUtil;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/global/utils/AppPermissionInitUtil;->afterPermissionGranted()V

    return-void
.end method

.method static synthetic lambda$null$0(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/video/common/library/widget/VideoCommonDialog;->dismiss(Landroid/content/Context;)Z

    const/16 p1, 0x4d3

    invoke-static {p0, p1}, Lcom/miui/video/base/utils/PermissionUtils;->startSettingDetailForResult(Landroid/app/Activity;I)V

    return-void
.end method

.method static synthetic lambda$null$1(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/video/common/library/widget/VideoCommonDialog;->dismiss(Landroid/content/Context;)Z

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method static synthetic lambda$onRequestPermissionsResult$2(Landroid/app/Activity;)V
    .locals 9

    const v0, 0x7f1000a1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f1000a0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/miui/video/global/utils/-$$Lambda$AppPermissionInitUtil$zHETCESJpN5dYxnUSRypDcNwTek;

    invoke-direct {v6, p0}, Lcom/miui/video/global/utils/-$$Lambda$AppPermissionInitUtil$zHETCESJpN5dYxnUSRypDcNwTek;-><init>(Landroid/app/Activity;)V

    new-instance v7, Lcom/miui/video/global/utils/-$$Lambda$AppPermissionInitUtil$ybwC1GpacoJ4oEuypBEp6aXj_8Y;

    invoke-direct {v7, p0}, Lcom/miui/video/global/utils/-$$Lambda$AppPermissionInitUtil$ybwC1GpacoJ4oEuypBEp6aXj_8Y;-><init>(Landroid/app/Activity;)V

    const v4, 0x7f100205

    const v5, 0x7f100050

    const/4 v8, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v8}, Lcom/miui/video/common/library/widget/VideoCommonDialog;->showOkCancelDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Z)V

    return-void
.end method


# virtual methods
.method public addCheckResultListener(Lcom/miui/video/global/utils/AppPermissionInitUtil$ICheckResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/global/utils/AppPermissionInitUtil;->mListener:Lcom/miui/video/global/utils/AppPermissionInitUtil$ICheckResultListener;

    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;II)V
    .locals 1

    const/16 v0, 0x4d3

    if-ne v0, p2, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/video/global/utils/AppPermissionInitUtil;->grantPermission(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    const/16 p2, 0x904

    if-ne p2, p3, :cond_1

    invoke-static {p1}, Lcom/miui/video/base/utils/PermissionUtils;->onPermissionDetailResult(Landroid/app/Activity;)V

    invoke-direct {p0, p1}, Lcom/miui/video/global/utils/AppPermissionInitUtil;->grantPermission(Landroid/app/Activity;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .locals 7

    if-eqz p3, :cond_1

    array-length v0, p3

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/miui/video/global/utils/-$$Lambda$AppPermissionInitUtil$11QWY0x6jKkUeeWl8gJ0XAPFimU;

    invoke-direct {v2, p0}, Lcom/miui/video/global/utils/-$$Lambda$AppPermissionInitUtil$11QWY0x6jKkUeeWl8gJ0XAPFimU;-><init>(Lcom/miui/video/global/utils/AppPermissionInitUtil;)V

    new-instance v3, Lcom/miui/video/global/utils/-$$Lambda$AppPermissionInitUtil$XdG1ursUN-U9oM-vuSvvnyyo4oQ;

    invoke-direct {v3, p1}, Lcom/miui/video/global/utils/-$$Lambda$AppPermissionInitUtil$XdG1ursUN-U9oM-vuSvvnyyo4oQ;-><init>(Landroid/app/Activity;)V

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lcom/miui/video/base/utils/PermissionUtils;->onRequestPermissionsResult(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Runnable;I[Ljava/lang/String;[I)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public removeCheckResultListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/global/utils/AppPermissionInitUtil;->mListener:Lcom/miui/video/global/utils/AppPermissionInitUtil$ICheckResultListener;

    return-void
.end method

.method public startCheckPermission(Landroid/app/Activity;)V
    .locals 1

    invoke-static {p1}, Lcom/miui/video/base/utils/PermissionUtils;->needShowPermissionDetail(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x903

    invoke-static {p1, v0}, Lcom/miui/video/base/utils/PermissionUtils;->startPermissionDetailForResult(Landroid/app/Activity;I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/video/global/utils/AppPermissionInitUtil;->grantPermission(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method
