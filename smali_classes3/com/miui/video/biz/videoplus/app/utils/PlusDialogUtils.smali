.class public Lcom/miui/video/biz/videoplus/app/utils/PlusDialogUtils;
.super Lcom/miui/video/common/library/utils/DialogUtils;
.source "PlusDialogUtils.java"


# static fields
.field private static final CHANGE_POSTER:Ljava/lang/String; = "change_poster"

.field public static final KEY_SHOWOKCANCEL:Ljava/lang/String; = "showOkCancel"

.field public static final KEY_SHOWSHARE:Ljava/lang/String; = "show_share"

.field public static final KEY_SHOWSORTTYPECHOOSE:Ljava/lang/String; = "showSortTypeChoose"

.field public static final KEY_SHOWVIDEOCHECKKEY:Ljava/lang/String; = "showVideoCheckPassword"

.field public static final KEY_SHOWVIDEOHIDEKEY:Ljava/lang/String; = "showVideoHidePassword"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/common/library/utils/DialogUtils;-><init>()V

    return-void
.end method

.method public static showLoadingDialog(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Lcom/miui/video/biz/videoplus/app/widget/UILoadingDialog;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/app/widget/UILoadingDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/app/widget/UILoadingDialog;->setText(Ljava/lang/String;)V

    invoke-static {p0, v0, p2}, Lcom/miui/video/common/library/utils/DialogUtils;->initDialog(Landroid/content/Context;Landroid/view/View;Z)Landroid/app/Dialog;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/video/biz/videoplus/app/utils/PlusDialogUtils;->showDialog(Landroid/content/Context;Landroid/app/Dialog;)Z

    return-void
.end method

.method public static showOkCancel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Z)V
    .locals 8

    new-instance v7, Lcom/miui/video/common/library/widget/UIOkCancelDialog;

    invoke-direct {v7, p0}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;-><init>(Landroid/content/Context;)V

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->setViews(Ljava/lang/String;Ljava/lang/CharSequence;IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    invoke-static {p0, v7, p7}, Lcom/miui/video/biz/videoplus/app/utils/PlusDialogUtils;->initDialog(Landroid/content/Context;Landroid/view/View;Z)Landroid/app/Dialog;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/video/biz/videoplus/app/utils/PlusDialogUtils;->showDialog(Landroid/content/Context;Landroid/app/Dialog;)Z

    return-void
.end method

.method public static showPosterChooseDialog(Landroid/content/Context;ZLandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Z)V
    .locals 1

    new-instance v0, Lcom/miui/video/biz/videoplus/app/widget/UITextDialog;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/app/widget/UITextDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/app/widget/UITextDialog;->setOnlyChangePoster(Z)V

    invoke-virtual {v0, p2}, Lcom/miui/video/biz/videoplus/app/widget/UITextDialog;->setChooseListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p3}, Lcom/miui/video/biz/videoplus/app/widget/UITextDialog;->setResetDefaultListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0, v0, p4}, Lcom/miui/video/biz/videoplus/app/utils/PlusDialogUtils;->initBottomDialog(Landroid/content/Context;Landroid/view/View;Z)Landroid/app/Dialog;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/video/biz/videoplus/app/utils/PlusDialogUtils;->showDialog(Landroid/content/Context;Landroid/app/Dialog;)Z

    return-void
.end method

.method public static showShareDialog(Landroid/content/Context;ZLjava/util/ArrayList;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;->setShareData(Ljava/util/List;)V

    invoke-virtual {v0, p3, p4}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;->setListener(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    invoke-static {p0, v0, p1}, Lcom/miui/video/common/library/utils/DialogUtils;->initDialog(Landroid/content/Context;Landroid/view/View;Z)Landroid/app/Dialog;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/video/biz/videoplus/app/utils/PlusDialogUtils;->showDialog(Landroid/content/Context;Landroid/app/Dialog;)Z

    return-void
.end method

.method public static showSortTypeChooseDialog(Landroid/content/Context;Lcom/miui/video/framework/base/entity/PageEntity;Lcom/miui/video/framework/impl/IUIListener;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/miui/video/framework/base/entity/PageEntity<",
            "+",
            "Lcom/miui/video/framework/base/ui/BaseUIEntity;",
            ">;",
            "Lcom/miui/video/framework/impl/IUIListener;",
            "Z)V"
        }
    .end annotation

    new-instance v0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->setData(Lcom/miui/video/framework/base/entity/PageEntity;)V

    invoke-virtual {v0, p2}, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->setUIListener(Lcom/miui/video/framework/impl/IUIListener;)V

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->initSortType()V

    invoke-static {p0, v0, p3}, Lcom/miui/video/biz/videoplus/app/utils/PlusDialogUtils;->initBottomDialog(Landroid/content/Context;Landroid/view/View;Z)Landroid/app/Dialog;

    move-result-object p1

    iget-object p2, v0, Lcom/miui/video/biz/videoplus/app/widget/UISortDialog;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-static {p0, p1}, Lcom/miui/video/biz/videoplus/app/utils/PlusDialogUtils;->showDialog(Landroid/content/Context;Landroid/app/Dialog;)Z

    return-void
.end method

.method public static showVideoCheckPassword(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$IPasswordListener;Z)V
    .locals 7

    new-instance v6, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;

    invoke-direct {v6, p0}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$Mode;->CHECK_PASSWORD:Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$Mode;

    invoke-virtual {v6, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->setMode(Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$Mode;)V

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->setViews(Ljava/lang/String;Ljava/lang/String;IILcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$IPasswordListener;)V

    invoke-static {p0, v6, p5}, Lcom/miui/video/biz/videoplus/app/utils/PlusDialogUtils;->initMiddleDialog(Landroid/content/Context;Landroid/view/View;Z)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const p3, 0x20008

    invoke-virtual {p2, p3}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/16 p3, 0x24

    invoke-virtual {p2, p3}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-static {p0, p1}, Lcom/miui/video/biz/videoplus/app/utils/PlusDialogUtils;->showDialog(Landroid/content/Context;Landroid/app/Dialog;)Z

    return-void
.end method

.method public static showVideoHidePassword(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$IPasswordListener;Z)V
    .locals 7

    new-instance v6, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;

    invoke-direct {v6, p0}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$Mode;->SET_PASSWORD:Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$Mode;

    invoke-virtual {v6, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->setMode(Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$Mode;)V

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->setViews(Ljava/lang/String;Ljava/lang/String;IILcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$IPasswordListener;)V

    invoke-static {p0, v6, p6}, Lcom/miui/video/biz/videoplus/app/utils/PlusDialogUtils;->initMiddleDialog(Landroid/content/Context;Landroid/view/View;Z)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const p3, 0x20008

    invoke-virtual {p2, p3}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/16 p3, 0x24

    invoke-virtual {p2, p3}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-static {p0, p1}, Lcom/miui/video/biz/videoplus/app/utils/PlusDialogUtils;->showDialog(Landroid/content/Context;Landroid/app/Dialog;)Z

    return-void
.end method
