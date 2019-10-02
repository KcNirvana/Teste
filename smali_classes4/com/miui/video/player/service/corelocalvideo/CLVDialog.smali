.class public Lcom/miui/video/player/service/corelocalvideo/CLVDialog;
.super Lcom/miui/video/common/library/utils/DialogUtils;
.source "CLVDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/player/service/corelocalvideo/CLVDialog$DialogMode;
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

.method public static showMiUIOkCancel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Z)V
    .locals 8

    new-instance v7, Lcom/miui/video/base/widget/ui/MiUIOkCancelDialog;

    invoke-direct {v7, p0}, Lcom/miui/video/base/widget/ui/MiUIOkCancelDialog;-><init>(Landroid/content/Context;)V

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/miui/video/base/widget/ui/MiUIOkCancelDialog;->setViews(Ljava/lang/String;Ljava/lang/String;IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    invoke-static {p0, v7, p7}, Lcom/miui/video/player/service/corelocalvideo/CLVDialog;->initBottomDialog(Landroid/content/Context;Landroid/view/View;Z)Landroid/app/Dialog;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/video/player/service/corelocalvideo/CLVDialog;->showDialog(Landroid/content/Context;Landroid/app/Dialog;)Z

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

    invoke-static {p0, v8, v2, v1}, Lcom/miui/video/player/service/corelocalvideo/CLVDialog;->initBottomDialog(Landroid/content/Context;Landroid/view/View;ZZ)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/miui/video/player/service/corelocalvideo/CLVDialog;->showDialog(Landroid/content/Context;Landroid/app/Dialog;)Z

    return-void
.end method

.method public static showOkCancel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Z)V
    .locals 9

    sget-object v8, Lcom/miui/video/player/service/corelocalvideo/CLVDialog$DialogMode;->DIALOG_BOTTOM:Lcom/miui/video/player/service/corelocalvideo/CLVDialog$DialogMode;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v8}, Lcom/miui/video/player/service/corelocalvideo/CLVDialog;->showOkCancel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;ZLcom/miui/video/player/service/corelocalvideo/CLVDialog$DialogMode;)V

    return-void
.end method

.method public static showOkCancel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;ZLcom/miui/video/player/service/corelocalvideo/CLVDialog$DialogMode;)V
    .locals 25

    sget-object v0, Lcom/miui/video/player/service/corelocalvideo/CLVDialog$1;->$SwitchMap$com$miui$video$player$service$corelocalvideo$CLVDialog$DialogMode:[I

    invoke-virtual/range {p8 .. p8}, Lcom/miui/video/player/service/corelocalvideo/CLVDialog$DialogMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sget v4, Lcom/miui/video/player/service/R$color;->c_black:I

    sget v6, Lcom/miui/video/player/service/R$color;->c_black_70:I

    sget v8, Lcom/miui/video/player/service/R$color;->c_black_70:I

    sget v10, Lcom/miui/video/player/service/R$color;->c_black_70:I

    sget v11, Lcom/miui/video/player/service/R$color;->c_black_20:I

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move/from16 v7, p3

    move/from16 v9, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move/from16 v14, p7

    invoke-static/range {v2 .. v14}, Lcom/miui/video/player/service/corelocalvideo/CLVDialog;->showOkCancel(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;IIIIIILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Z)V

    goto :goto_0

    :cond_0
    sget v14, Lcom/miui/video/player/service/R$color;->c_black:I

    sget v16, Lcom/miui/video/player/service/R$color;->c_black_70:I

    sget v18, Lcom/miui/video/player/service/R$color;->c_black_70:I

    sget v20, Lcom/miui/video/player/service/R$color;->c_black_70:I

    sget v21, Lcom/miui/video/player/service/R$color;->c_black_20:I

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v15, p2

    move/from16 v17, p3

    move/from16 v19, p4

    move-object/from16 v22, p5

    move-object/from16 v23, p6

    move/from16 v24, p7

    invoke-static/range {v12 .. v24}, Lcom/miui/video/player/service/corelocalvideo/CLVDialog;->showOkCancelMiddle(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;IIIIIILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Z)V

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

    invoke-static {p0, v8, v2, v1}, Lcom/miui/video/player/service/corelocalvideo/CLVDialog;->initBottomDialog(Landroid/content/Context;Landroid/view/View;ZZ)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/miui/video/player/service/corelocalvideo/CLVDialog;->showDialog(Landroid/content/Context;Landroid/app/Dialog;)Z

    return-void
.end method

.method public static showSlideSaveDialog(Landroid/content/Context;Landroid/view/View;Landroid/content/DialogInterface$OnKeyListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/miui/video/player/service/corelocalvideo/CLVDialog;->initBottomDialog(Landroid/content/Context;Landroid/view/View;Z)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    invoke-static {p0, p1}, Lcom/miui/video/player/service/corelocalvideo/CLVDialog;->showDialog(Landroid/content/Context;Landroid/app/Dialog;)Z

    return-void
.end method

.method public static showVideoCheckPassword(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/miui/video/player/service/localvideo/ui/UIPasswordDialog$IPasswordListener;Z)V
    .locals 7

    new-instance v6, Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog;

    invoke-direct {v6, p0}, Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog$Mode;->CHECK_PASSWORD:Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog$Mode;

    invoke-virtual {v6, v0}, Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog;->setMode(Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog$Mode;)V

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog;->setViews(Ljava/lang/String;Ljava/lang/String;IILcom/miui/video/player/service/localvideo/ui/UIPasswordDialog$IPasswordListener;)V

    const/4 p1, 0x1

    invoke-static {p0, v6, p5, p1}, Lcom/miui/video/player/service/corelocalvideo/CLVDialog;->initMiddleDialog(Landroid/content/Context;Landroid/view/View;ZZ)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const p3, 0x20008

    invoke-virtual {p2, p3}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/16 p3, 0x24

    invoke-virtual {p2, p3}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-static {p0, p1}, Lcom/miui/video/player/service/corelocalvideo/CLVDialog;->showDialog(Landroid/content/Context;Landroid/app/Dialog;)Z

    return-void
.end method

.method public static showVideoHideFinished(Landroid/content/Context;IILjava/lang/String;ZILcom/miui/video/common/library/widget/UIOkCancelDialog$IOkCancelCheckListener;Z)V
    .locals 10

    move-object v0, p0

    new-instance v9, Lcom/miui/video/common/library/widget/UIOkCancelDialog;

    invoke-direct {v9, p0}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x0

    move-object v1, v9

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->setViews(IILjava/lang/String;ZIILcom/miui/video/common/library/widget/UIOkCancelDialog$IOkCancelCheckListener;)V

    const/4 v1, 0x1

    move/from16 v2, p7

    invoke-static {p0, v9, v2, v1}, Lcom/miui/video/player/service/corelocalvideo/CLVDialog;->initBottomDialog(Landroid/content/Context;Landroid/view/View;ZZ)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/miui/video/player/service/corelocalvideo/CLVDialog;->showDialog(Landroid/content/Context;Landroid/app/Dialog;)Z

    return-void
.end method

.method public static showVideoHidePassword(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcom/miui/video/player/service/localvideo/ui/UIPasswordDialog$IPasswordListener;Z)V
    .locals 7

    new-instance v6, Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog;

    invoke-direct {v6, p0}, Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog$Mode;->SET_PASSWORD:Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog$Mode;

    invoke-virtual {v6, v0}, Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog;->setMode(Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog$Mode;)V

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog;->setViews(Ljava/lang/String;Ljava/lang/String;IILcom/miui/video/player/service/localvideo/ui/UIPasswordDialog$IPasswordListener;)V

    invoke-static {p0, v6, p6}, Lcom/miui/video/player/service/corelocalvideo/CLVDialog;->initMiddleDialog(Landroid/content/Context;Landroid/view/View;Z)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const p3, 0x20008

    invoke-virtual {p2, p3}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/16 p3, 0x24

    invoke-virtual {p2, p3}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-static {p0, p1}, Lcom/miui/video/player/service/corelocalvideo/CLVDialog;->showDialog(Landroid/content/Context;Landroid/app/Dialog;)Z

    return-void
.end method
