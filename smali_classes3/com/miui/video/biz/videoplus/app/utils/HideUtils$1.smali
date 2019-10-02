.class final Lcom/miui/video/biz/videoplus/app/utils/HideUtils$1;
.super Ljava/lang/Object;
.source "HideUtils.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$IPasswordListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/app/utils/HideUtils;->showHideVideoDialog(Landroid/content/Context;Ljava/util/List;Lcom/miui/video/base/common/impl/IUIListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/miui/video/base/common/impl/IUIListener;

.field final synthetic val$mContext:Landroid/content/Context;

.field final synthetic val$mData:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/miui/video/base/common/impl/IUIListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/utils/HideUtils$1;->val$mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/app/utils/HideUtils$1;->val$mData:Ljava/util/List;

    iput-object p3, p0, Lcom/miui/video/biz/videoplus/app/utils/HideUtils$1;->val$listener:Lcom/miui/video/base/common/impl/IUIListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/utils/HideUtils$1;->val$mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/utils/PlusDialogUtils;->dismiss(Landroid/content/Context;)Z

    return-void
.end method

.method public onCheckPassword(Ljava/lang/String;Lcom/miui/video/biz/videoplus/app/interfaces/IEditListener;)V
    .locals 0

    return-void
.end method

.method public onConfirmPassword(Ljava/lang/String;)V
    .locals 8

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/utils/HideUtils;->access$000(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/utils/HideUtils$1;->val$mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/utils/PlusDialogUtils;->dismiss(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/utils/HideUtils$1;->val$mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/utils/HideUtils$1;->val$mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/miui/video/biz/videoplus/R$string;->v_confirm_hide_videos:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/miui/video/biz/videoplus/R$string;->v_cancel:I

    sget v4, Lcom/miui/video/biz/videoplus/R$string;->v_ok:I

    new-instance v5, Lcom/miui/video/biz/videoplus/app/utils/HideUtils$1$1;

    invoke-direct {v5, p0}, Lcom/miui/video/biz/videoplus/app/utils/HideUtils$1$1;-><init>(Lcom/miui/video/biz/videoplus/app/utils/HideUtils$1;)V

    new-instance v6, Lcom/miui/video/biz/videoplus/app/utils/HideUtils$1$2;

    invoke-direct {v6, p0}, Lcom/miui/video/biz/videoplus/app/utils/HideUtils$1$2;-><init>(Lcom/miui/video/biz/videoplus/app/utils/HideUtils$1;)V

    const/4 v1, 0x0

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lcom/miui/video/biz/videoplus/app/utils/PlusDialogUtils;->showOkCancel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Z)V

    return-void
.end method
