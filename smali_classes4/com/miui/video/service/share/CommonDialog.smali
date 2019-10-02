.class public Lcom/miui/video/service/share/CommonDialog;
.super Lcom/miui/video/common/library/utils/DialogUtils;
.source "CommonDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/common/library/utils/DialogUtils;-><init>()V

    return-void
.end method

.method public static initBottomDialog(Landroid/content/Context;Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Z)Landroid/app/Dialog;
    .locals 8

    new-instance v7, Lcom/miui/video/common/library/widget/UIOkCancelDialog;

    invoke-direct {v7, p0}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/miui/video/service/R$string;->share:I

    sget v4, Lcom/miui/video/service/R$string;->cancel:I

    const/4 v3, 0x0

    move-object v0, v7

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->setCustomView(ILandroid/view/View;IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    invoke-static {p0, v7, p4}, Lcom/miui/video/service/share/CommonDialog;->initBottomDialog(Landroid/content/Context;Landroid/view/View;Z)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method
