.class public Lcom/miui/video/service/widget/dialog/CLVDialog;
.super Lcom/miui/video/common/library/utils/DialogUtils;
.source "CLVDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/service/widget/dialog/CLVDialog$DialogMode;
    }
.end annotation


# static fields
.field public static final KEY_SHOWAIMUSIC:Ljava/lang/String; = "showAiMusic"

.field public static final KEY_SHOWMIUIOKCANCEL:Ljava/lang/String; = "showMiUIOkCancel"

.field public static final KEY_SHOWVIDEOSLIDESAVE:Ljava/lang/String; = "showVideoSlideSave"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/common/library/utils/DialogUtils;-><init>()V

    return-void
.end method

.method public static showOkCancel(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;IIIIIILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Z)V
    .locals 9

    move-object v0, p0

    new-instance v8, Lcom/miui/video/common/library/widget/UIOkCancelDialog;

    invoke-direct {v8, p0}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;-><init>(Landroid/content/Context;)V

    move-object v1, v8

    move-object v2, p1

    move-object v3, p3

    move v4, p5

    move/from16 v5, p7

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    invoke-virtual/range {v1 .. v7}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->setViews(Ljava/lang/String;Ljava/lang/CharSequence;IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    move v1, p2

    invoke-virtual {v8, p2}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->setTitleColorRes(I)V

    move v1, p4

    invoke-virtual {v8, p4}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->setInfoColorRes(I)V

    move v1, p6

    invoke-virtual {v8, p6}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->setOkColorRes(I)V

    move/from16 v1, p8

    invoke-virtual {v8, v1}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->setCancelColorRes(I)V

    move/from16 v1, p9

    invoke-virtual {v8, v1}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->setLineColorRes(I)V

    const/4 v1, 0x1

    move/from16 v2, p12

    invoke-static {p0, v8, v2, v1}, Lcom/miui/video/service/widget/dialog/CLVDialog;->initBottomDialog(Landroid/content/Context;Landroid/view/View;ZZ)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/miui/video/service/widget/dialog/CLVDialog;->showDialog(Landroid/content/Context;Landroid/app/Dialog;)Z

    return-void
.end method

.method public static showOkCancel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Z)V
    .locals 9

    sget-object v8, Lcom/miui/video/service/widget/dialog/CLVDialog$DialogMode;->DIALOG_BOTTOM:Lcom/miui/video/service/widget/dialog/CLVDialog$DialogMode;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v8}, Lcom/miui/video/service/widget/dialog/CLVDialog;->showOkCancel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;ZLcom/miui/video/service/widget/dialog/CLVDialog$DialogMode;)V

    return-void
.end method

.method public static showOkCancel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;ZLcom/miui/video/service/widget/dialog/CLVDialog$DialogMode;)V
    .locals 25

    sget-object v0, Lcom/miui/video/service/widget/dialog/CLVDialog$1;->$SwitchMap$com$miui$video$service$widget$dialog$CLVDialog$DialogMode:[I

    invoke-virtual/range {p8 .. p8}, Lcom/miui/video/service/widget/dialog/CLVDialog$DialogMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sget v4, Lcom/miui/video/service/R$color;->c_black:I

    sget v6, Lcom/miui/video/service/R$color;->c_black_70:I

    sget v8, Lcom/miui/video/service/R$color;->c_black_70:I

    sget v10, Lcom/miui/video/service/R$color;->c_black_70:I

    sget v11, Lcom/miui/video/service/R$color;->c_black_20:I

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move/from16 v7, p3

    move/from16 v9, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move/from16 v14, p7

    invoke-static/range {v2 .. v14}, Lcom/miui/video/service/widget/dialog/CLVDialog;->showOkCancel(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;IIIIIILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Z)V

    goto :goto_0

    :cond_0
    sget v14, Lcom/miui/video/service/R$color;->c_black:I

    sget v16, Lcom/miui/video/service/R$color;->c_black_70:I

    sget v18, Lcom/miui/video/service/R$color;->c_black_70:I

    sget v20, Lcom/miui/video/service/R$color;->c_black_70:I

    sget v21, Lcom/miui/video/service/R$color;->c_black_20:I

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v15, p2

    move/from16 v17, p3

    move/from16 v19, p4

    move-object/from16 v22, p5

    move-object/from16 v23, p6

    move/from16 v24, p7

    invoke-static/range {v12 .. v24}, Lcom/miui/video/service/widget/dialog/CLVDialog;->showOkCancelMiddle(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;IIIIIILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Z)V

    :goto_0
    return-void
.end method

.method public static showOkCancelMiddle(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;IIIIIILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Z)V
    .locals 9

    move-object v0, p0

    new-instance v8, Lcom/miui/video/common/library/widget/UIOkCancelDialog;

    invoke-direct {v8, p0}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;-><init>(Landroid/content/Context;)V

    move-object v1, v8

    move-object v2, p1

    move-object v3, p3

    move v4, p5

    move/from16 v5, p7

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    invoke-virtual/range {v1 .. v7}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->setViews(Ljava/lang/String;Ljava/lang/CharSequence;IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    move v1, p2

    invoke-virtual {v8, p2}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->setTitleColorRes(I)V

    move v1, p4

    invoke-virtual {v8, p4}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->setInfoColorRes(I)V

    move v1, p6

    invoke-virtual {v8, p6}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->setOkColorRes(I)V

    move/from16 v1, p8

    invoke-virtual {v8, v1}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->setCancelColorRes(I)V

    move/from16 v1, p9

    invoke-virtual {v8, v1}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->setLineColorRes(I)V

    const/4 v1, 0x1

    move/from16 v2, p12

    invoke-static {p0, v8, v2, v1}, Lcom/miui/video/service/widget/dialog/CLVDialog;->initMiddleDialog(Landroid/content/Context;Landroid/view/View;ZZ)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/miui/video/service/widget/dialog/CLVDialog;->showDialog(Landroid/content/Context;Landroid/app/Dialog;)Z

    return-void
.end method
