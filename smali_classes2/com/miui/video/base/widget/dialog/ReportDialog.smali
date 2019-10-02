.class public Lcom/miui/video/base/widget/dialog/ReportDialog;
.super Lcom/miui/video/common/library/widget/VideoCommonDialog;
.source "ReportDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/common/library/widget/VideoCommonDialog;-><init>()V

    return-void
.end method

.method private static bgAlpha(Landroid/view/Window;F)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method protected static initBottomDialog(Landroid/content/Context;Landroid/view/View;ZZ)Landroid/app/Dialog;
    .locals 1

    const/16 v0, 0x57

    invoke-static {p0, p1, p2, v0, p3}, Lcom/miui/video/base/widget/dialog/ReportDialog;->initDialog(Landroid/content/Context;Landroid/view/View;ZIZ)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method protected static initDialog(Landroid/content/Context;Landroid/view/View;ZIZ)Landroid/app/Dialog;
    .locals 2

    new-instance v0, Landroid/app/Dialog;

    sget v1, Lcom/miui/video/base/R$style;->s_fw_dialog:I

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {v0, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/Window;->setGravity(I)V

    new-instance p1, Lcom/miui/video/base/widget/dialog/-$$Lambda$ReportDialog$VB2Et5C8C3rWuyxRYU18babBIgs;

    invoke-direct {p1, p0}, Lcom/miui/video/base/widget/dialog/-$$Lambda$ReportDialog$VB2Et5C8C3rWuyxRYU18babBIgs;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-static {v0, p4}, Lcom/miui/video/base/widget/dialog/ReportDialog;->hideNavigation(Landroid/app/Dialog;Z)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    sget p2, Lcom/miui/video/base/R$style;->s_fw_dialog:I

    invoke-virtual {p1, p2}, Landroid/view/Window;->setWindowAnimations(I)V

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const p1, 0x3f333333    # 0.7f

    invoke-static {p0, p1}, Lcom/miui/video/base/widget/dialog/ReportDialog;->bgAlpha(Landroid/view/Window;F)V

    return-object v0
.end method

.method protected static initMiddleDialog(Landroid/content/Context;Landroid/view/View;ZZ)Landroid/app/Dialog;
    .locals 1

    const/16 v0, 0x17

    invoke-static {p0, p1, p2, v0, p3}, Lcom/miui/video/base/widget/dialog/ReportDialog;->initDialog(Landroid/content/Context;Landroid/view/View;ZIZ)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$initDialog$0(Landroid/content/Context;Landroid/content/DialogInterface;)V
    .locals 0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p0, p1}, Lcom/miui/video/base/widget/dialog/ReportDialog;->bgAlpha(Landroid/view/Window;F)V

    return-void
.end method

.method public static showReportDialog(Landroid/content/Context;Ljava/lang/String;IILcom/miui/video/framework/base/ui/BaseUIEntity;IIIIIIILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;ZLcom/miui/video/common/library/widget/VideoCommonDialog$DialogMode;)V
    .locals 12

    move-object v0, p0

    move/from16 v1, p14

    new-instance v11, Lcom/miui/video/base/widget/dialog/UIReportItemView;

    invoke-direct {v11, p0}, Lcom/miui/video/base/widget/dialog/UIReportItemView;-><init>(Landroid/content/Context;)V

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual {v11, p1, p2, p3}, Lcom/miui/video/base/widget/dialog/UIReportItemView;->setViewTitle(Ljava/lang/String;II)V

    move-object/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {v11, v2, v3}, Lcom/miui/video/base/widget/dialog/UIReportItemView;->setContentView(Lcom/miui/video/framework/base/ui/BaseUIEntity;I)V

    move-object v2, v11

    move/from16 v3, p6

    move/from16 v4, p7

    move/from16 v5, p10

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p11

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    invoke-virtual/range {v2 .. v10}, Lcom/miui/video/base/widget/dialog/UIReportItemView;->setOnCancelBar(IIIIIILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    sget-object v2, Lcom/miui/video/base/widget/dialog/ReportDialog$1;->$SwitchMap$com$miui$video$common$library$widget$VideoCommonDialog$DialogMode:[I

    invoke-virtual/range {p15 .. p15}, Lcom/miui/video/common/library/widget/VideoCommonDialog$DialogMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-static {p0, v11, v1, v2}, Lcom/miui/video/base/widget/dialog/ReportDialog;->initBottomDialog(Landroid/content/Context;Landroid/view/View;ZZ)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/miui/video/base/widget/dialog/ReportDialog;->showDialog(Landroid/content/Context;Landroid/app/Dialog;)Z

    goto :goto_0

    :cond_0
    invoke-static {p0, v11, v1, v3}, Lcom/miui/video/base/widget/dialog/ReportDialog;->initMiddleDialog(Landroid/content/Context;Landroid/view/View;ZZ)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/miui/video/base/widget/dialog/ReportDialog;->showDialog(Landroid/content/Context;Landroid/app/Dialog;)Z

    :goto_0
    return-void
.end method

.method public static showReportDialog(Landroid/content/Context;Ljava/lang/String;Lcom/miui/video/framework/base/ui/BaseUIEntity;IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Z)V
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

    invoke-static/range {v0 .. v8}, Lcom/miui/video/base/widget/dialog/ReportDialog;->showReportDialog(Landroid/content/Context;Ljava/lang/String;Lcom/miui/video/framework/base/ui/BaseUIEntity;IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;ZLcom/miui/video/common/library/widget/VideoCommonDialog$DialogMode;)V

    return-void
.end method

.method public static showReportDialog(Landroid/content/Context;Ljava/lang/String;Lcom/miui/video/framework/base/ui/BaseUIEntity;IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;ZLcom/miui/video/common/library/widget/VideoCommonDialog$DialogMode;)V
    .locals 16

    sget v2, Lcom/miui/video/base/R$color;->c_black_40:I

    sget v3, Lcom/miui/video/base/R$dimen;->sp_12:I

    sget v5, Lcom/miui/video/base/R$drawable;->selector_ui_report_item_btn:I

    sget v7, Lcom/miui/video/base/R$color;->c_black_40:I

    sget v9, Lcom/miui/video/base/R$color;->c_blue_mediation:I

    sget v10, Lcom/miui/video/base/R$drawable;->ui_update_dialog_shape_bg_corner_left_bottom_white:I

    sget v11, Lcom/miui/video/base/R$drawable;->ui_update_dialog_shape_bg_corner_right_bottom_white:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p2

    move/from16 v6, p3

    move/from16 v8, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move/from16 v14, p7

    move-object/from16 v15, p8

    invoke-static/range {v0 .. v15}, Lcom/miui/video/base/widget/dialog/ReportDialog;->showReportDialog(Landroid/content/Context;Ljava/lang/String;IILcom/miui/video/framework/base/ui/BaseUIEntity;IIIIIIILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;ZLcom/miui/video/common/library/widget/VideoCommonDialog$DialogMode;)V

    return-void
.end method
