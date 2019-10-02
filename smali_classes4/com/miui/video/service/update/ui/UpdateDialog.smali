.class public Lcom/miui/video/service/update/ui/UpdateDialog;
.super Lcom/miui/video/common/library/widget/VideoCommonDialog;
.source "UpdateDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/common/library/widget/VideoCommonDialog;-><init>()V

    return-void
.end method

.method protected static initBottomDialog(Landroid/content/Context;Landroid/view/View;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 6

    const/16 v3, 0x57

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/miui/video/service/update/ui/UpdateDialog;->initDialog(Landroid/content/Context;Landroid/view/View;ZIZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method protected static initDialog(Landroid/content/Context;Landroid/view/View;ZIZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 2

    new-instance v0, Landroid/app/Dialog;

    sget v1, Lcom/miui/video/service/R$style;->s_fw_dialog:I

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {v0, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {v0, p5}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/view/Window;->setGravity(I)V

    invoke-static {v0, p4}, Lcom/miui/video/service/update/ui/UpdateDialog;->hideNavigation(Landroid/app/Dialog;Z)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    sget p1, Lcom/miui/video/service/R$style;->s_fw_dialog:I

    invoke-virtual {p0, p1}, Landroid/view/Window;->setWindowAnimations(I)V

    return-object v0
.end method

.method protected static initMiddleDialog(Landroid/content/Context;Landroid/view/View;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 6

    const/16 v3, 0x17

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/miui/video/service/update/ui/UpdateDialog;->initDialog(Landroid/content/Context;Landroid/view/View;ZIZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$showOkCancel$22(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/video/service/update/ui/UpdateDialog;->dismiss(Landroid/content/Context;)Z

    return-void
.end method

.method static synthetic lambda$showOkCancel$23(Lcom/miui/video/common/library/widget/UIOkCancelDialog;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->releaseTimer()V

    return-void
.end method

.method public static showOkCancel(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;IIIIIIIIIILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;ZLcom/miui/video/common/library/widget/VideoCommonDialog$DialogMode;)V
    .locals 10

    move-object v0, p0

    move/from16 v1, p17

    new-instance v9, Lcom/miui/video/common/library/widget/UIOkCancelDialog;

    invoke-direct {v9, p0}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;-><init>(Landroid/content/Context;)V

    move-object v2, v9

    move-object v3, p1

    move-object v4, p4

    move/from16 v5, p6

    move/from16 v6, p8

    move-object/from16 v7, p15

    move-object/from16 v8, p16

    invoke-virtual/range {v2 .. v8}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->setViews(Ljava/lang/String;Ljava/lang/CharSequence;IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

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

    move v2, p3

    invoke-virtual {v9, p3}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->setTitleGravity(I)V

    move/from16 v2, p11

    invoke-virtual {v9, v2}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->setOkBackgroundDrawableRes(I)V

    move/from16 v2, p12

    invoke-virtual {v9, v2}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->setCancelBackgroundDrawableRes(I)V

    move/from16 v2, p13

    move/from16 v3, p14

    invoke-virtual {v9, v2, v3}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->setShowTimer(II)V

    new-instance v2, Lcom/miui/video/service/update/ui/-$$Lambda$UpdateDialog$DQSJEUqISxMmJx1qW4mEjxzNXpQ;

    invoke-direct {v2, p0}, Lcom/miui/video/service/update/ui/-$$Lambda$UpdateDialog$DQSJEUqISxMmJx1qW4mEjxzNXpQ;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v2}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->setTimeFinishListener(Lcom/miui/video/common/library/widget/UIOkCancelDialog$ITimeFinishListener;)V

    new-instance v2, Lcom/miui/video/service/update/ui/-$$Lambda$UpdateDialog$ANelxcdzImkA2EjS9sGymbp1i6Y;

    invoke-direct {v2, v9}, Lcom/miui/video/service/update/ui/-$$Lambda$UpdateDialog$ANelxcdzImkA2EjS9sGymbp1i6Y;-><init>(Lcom/miui/video/common/library/widget/UIOkCancelDialog;)V

    sget-object v3, Lcom/miui/video/service/update/ui/UpdateDialog$1;->$SwitchMap$com$miui$video$common$library$widget$VideoCommonDialog$DialogMode:[I

    invoke-virtual/range {p18 .. p18}, Lcom/miui/video/common/library/widget/VideoCommonDialog$DialogMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    const/4 v3, 0x0

    invoke-static {p0, v9, v1, v3, v2}, Lcom/miui/video/service/update/ui/UpdateDialog;->initBottomDialog(Landroid/content/Context;Landroid/view/View;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/miui/video/service/update/ui/UpdateDialog;->showDialog(Landroid/content/Context;Landroid/app/Dialog;)Z

    goto :goto_0

    :cond_0
    invoke-static {p0, v9, v1, v4, v2}, Lcom/miui/video/service/update/ui/UpdateDialog;->initMiddleDialog(Landroid/content/Context;Landroid/view/View;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/miui/video/service/update/ui/UpdateDialog;->showDialog(Landroid/content/Context;Landroid/app/Dialog;)Z

    :goto_0
    return-void
.end method

.method public static showUpdateDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIIILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Z)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p2

    move/from16 v6, p3

    move/from16 v8, p4

    move/from16 v13, p5

    move/from16 v14, p6

    move-object/from16 v15, p7

    move-object/from16 v16, p8

    move/from16 v17, p9

    sget v2, Lcom/miui/video/service/R$color;->c_black:I

    sget v5, Lcom/miui/video/service/R$color;->c_black_60:I

    sget v7, Lcom/miui/video/service/R$color;->c_black_40:I

    sget v9, Lcom/miui/video/service/R$color;->c_white:I

    sget v10, Lcom/miui/video/service/R$color;->c_black_20:I

    sget v11, Lcom/miui/video/service/R$drawable;->ui_update_dialog_shape_bg_corner_left_bottom_white_90:I

    sget v12, Lcom/miui/video/service/R$drawable;->ui_update_dialog_shape_bg_corner_right_bottom_blue:I

    sget-object v18, Lcom/miui/video/common/library/widget/VideoCommonDialog$DialogMode;->DIALOG_BOTTOM:Lcom/miui/video/common/library/widget/VideoCommonDialog$DialogMode;

    const v3, 0x800003

    invoke-static/range {v0 .. v18}, Lcom/miui/video/service/update/ui/UpdateDialog;->showOkCancel(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;IIIIIIIIIILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;ZLcom/miui/video/common/library/widget/VideoCommonDialog$DialogMode;)V

    return-void
.end method

.method public static showUpdateDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIIILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;ZLcom/miui/video/common/library/widget/VideoCommonDialog$DialogMode;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p2

    move/from16 v6, p3

    move/from16 v8, p4

    move/from16 v13, p5

    move/from16 v14, p6

    move-object/from16 v15, p7

    move-object/from16 v16, p8

    move/from16 v17, p9

    move-object/from16 v18, p10

    sget v2, Lcom/miui/video/service/R$color;->c_black:I

    sget v5, Lcom/miui/video/service/R$color;->c_black_60:I

    sget v7, Lcom/miui/video/service/R$color;->c_black_40:I

    sget v9, Lcom/miui/video/service/R$color;->c_white:I

    sget v10, Lcom/miui/video/service/R$color;->c_black_20:I

    sget v11, Lcom/miui/video/service/R$drawable;->ui_update_dialog_shape_bg_corner_left_bottom_white_90:I

    sget v12, Lcom/miui/video/service/R$drawable;->ui_update_dialog_shape_bg_corner_right_bottom_blue:I

    const v3, 0x800003

    invoke-static/range {v0 .. v18}, Lcom/miui/video/service/update/ui/UpdateDialog;->showOkCancel(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;IIIIIIIIIILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;ZLcom/miui/video/common/library/widget/VideoCommonDialog$DialogMode;)V

    return-void
.end method

.method public static showUpdateDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Z)V
    .locals 9

    sget-object v8, Lcom/miui/video/common/library/widget/VideoCommonDialog$DialogMode;->DIALOG_BOTTOM:Lcom/miui/video/common/library/widget/VideoCommonDialog$DialogMode;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v8}, Lcom/miui/video/service/update/ui/UpdateDialog;->showUpdateDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;ZLcom/miui/video/common/library/widget/VideoCommonDialog$DialogMode;)V

    return-void
.end method

.method public static showUpdateDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;ZLcom/miui/video/common/library/widget/VideoCommonDialog$DialogMode;)V
    .locals 11

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-static/range {v0 .. v10}, Lcom/miui/video/service/update/ui/UpdateDialog;->showUpdateDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIIILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;ZLcom/miui/video/common/library/widget/VideoCommonDialog$DialogMode;)V

    return-void
.end method
