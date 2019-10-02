.class final Lcom/miui/video/biz/videoplus/app/utils/HideUtils$5;
.super Ljava/lang/Object;
.source "HideUtils.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$IPasswordListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/app/utils/HideUtils;->showHideVideoCheckDialog(Landroid/content/Context;Lcom/miui/video/framework/impl/IActionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$actionListener:Lcom/miui/video/framework/impl/IActionListener;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/miui/video/framework/impl/IActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/utils/HideUtils$5;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/app/utils/HideUtils$5;->val$actionListener:Lcom/miui/video/framework/impl/IActionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/utils/HideUtils$5;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/utils/PlusDialogUtils;->dismiss(Landroid/content/Context;)Z

    return-void
.end method

.method public onCheckPassword(Ljava/lang/String;Lcom/miui/video/biz/videoplus/app/interfaces/IEditListener;)V
    .locals 2

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/HideUtils;->access$200()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/utils/HideUtils$5;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/utils/PlusDialogUtils;->dismiss(Landroid/content/Context;)Z

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/utils/HideUtils$5;->val$actionListener:Lcom/miui/video/framework/impl/IActionListener;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/utils/HideUtils$5;->val$actionListener:Lcom/miui/video/framework/impl/IActionListener;

    const-string p2, "KEY_CHECK_SUCCESS"

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p1, p2, v0, v1}, Lcom/miui/video/framework/impl/IActionListener;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lcom/miui/video/biz/videoplus/app/interfaces/IEditListener;->clearTextDelay()V

    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object p1

    sget p2, Lcom/miui/video/biz/videoplus/R$string;->t_password_wrong:I

    invoke-virtual {p1, p2}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(I)Lcom/miui/video/common/library/utils/ToastUtils;

    :cond_1
    :goto_0
    return-void
.end method

.method public onConfirmPassword(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
