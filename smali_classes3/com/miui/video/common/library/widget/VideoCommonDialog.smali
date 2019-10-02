.class public Lcom/miui/video/common/library/widget/VideoCommonDialog;
.super Lcom/miui/video/common/library/utils/DialogUtils;
.source "VideoCommonDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/common/library/widget/VideoCommonDialog$DialogMode;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/common/library/utils/DialogUtils;-><init>()V

    return-void
.end method

.method private static showOkCancelDialog(Landroid/content/Context;Ljava/lang/String;ILjava/lang/CharSequence;ZIIIIIILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;ZLcom/miui/video/common/library/widget/VideoCommonDialog$DialogMode;)V
    .locals 10

    move-object v0, p0

    move/from16 v1, p13

    new-instance v9, Lcom/miui/video/common/library/widget/UIOkCancelDialog;

    invoke-direct {v9, p0}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;-><init>(Landroid/content/Context;)V

    move-object v2, v9

    move-object v3, p1

    move-object v4, p3

    move/from16 v5, p6

    move/from16 v6, p8

    move-object/from16 v7, p11

    move-object/from16 v8, p12

    invoke-virtual/range {v2 .. v8}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->setViews(Ljava/lang/String;Ljava/lang/CharSequence;IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    move v2, p4

    invoke-virtual {v9, p4}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->setInfoContainLink(Z)V

    move v2, p2

    invoke-virtual {v9, p2}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->setTitleColorRes(I)V

    move v2, p5

    invoke-virtual {v9, p5}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->setInfoColorRes(I)V

    move/from16 v2, p7

    invoke-virtual {v9, v2}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->setOkColorRes(I)V

    move/from16 v2, p9

    invoke-virtual {v9, v2}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->setCancelColorRes(I)V

    move/from16 v2, p10

    invoke-virtual {v9, v2}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->setLineColorRes(I)V

    sget-object v2, Lcom/miui/video/common/library/widget/VideoCommonDialog$1;->$SwitchMap$com$miui$video$common$library$widget$VideoCommonDialog$DialogMode:[I

    invoke-virtual/range {p14 .. p14}, Lcom/miui/video/common/library/widget/VideoCommonDialog$DialogMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    invoke-static {p0, v9, v1}, Lcom/miui/video/common/library/widget/VideoCommonDialog;->initBottomDialog(Landroid/content/Context;Landroid/view/View;Z)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/miui/video/common/library/widget/VideoCommonDialog;->showDialog(Landroid/content/Context;Landroid/app/Dialog;)Z

    goto :goto_0

    :cond_0
    invoke-static {p0, v9, v1}, Lcom/miui/video/common/library/widget/VideoCommonDialog;->initMiddleDialog(Landroid/content/Context;Landroid/view/View;Z)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/miui/video/common/library/widget/VideoCommonDialog;->showDialog(Landroid/content/Context;Landroid/app/Dialog;)Z

    :goto_0
    return-void
.end method

.method public static showOkCancelDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Z)V
    .locals 10

    sget-object v9, Lcom/miui/video/common/library/widget/VideoCommonDialog$DialogMode;->DIALOG_BOTTOM:Lcom/miui/video/common/library/widget/VideoCommonDialog$DialogMode;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v9}, Lcom/miui/video/common/library/widget/VideoCommonDialog;->showOkCancelDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;ZIILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;ZLcom/miui/video/common/library/widget/VideoCommonDialog$DialogMode;)V

    return-void
.end method

.method public static showOkCancelDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;ZIILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Z)V
    .locals 10

    sget-object v9, Lcom/miui/video/common/library/widget/VideoCommonDialog$DialogMode;->DIALOG_BOTTOM:Lcom/miui/video/common/library/widget/VideoCommonDialog$DialogMode;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v0 .. v9}, Lcom/miui/video/common/library/widget/VideoCommonDialog;->showOkCancelDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;ZIILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;ZLcom/miui/video/common/library/widget/VideoCommonDialog$DialogMode;)V

    return-void
.end method

.method public static showOkCancelDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;ZIILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;ZLcom/miui/video/common/library/widget/VideoCommonDialog$DialogMode;)V
    .locals 15

    sget v2, Lcom/miui/video/common/library/R$color;->c_black:I

    sget v5, Lcom/miui/video/common/library/R$color;->c_black_70:I

    sget v7, Lcom/miui/video/common/library/R$color;->c_black_70:I

    sget v9, Lcom/miui/video/common/library/R$color;->c_black_70:I

    sget v10, Lcom/miui/video/common/library/R$color;->c_black_20:I

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v6, p4

    move/from16 v8, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move/from16 v13, p8

    move-object/from16 v14, p9

    invoke-static/range {v0 .. v14}, Lcom/miui/video/common/library/widget/VideoCommonDialog;->showOkCancelDialog(Landroid/content/Context;Ljava/lang/String;ILjava/lang/CharSequence;ZIIIIIILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;ZLcom/miui/video/common/library/widget/VideoCommonDialog$DialogMode;)V

    return-void
.end method
