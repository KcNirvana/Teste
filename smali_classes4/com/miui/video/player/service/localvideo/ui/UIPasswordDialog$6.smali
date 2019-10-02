.class Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog$6;
.super Ljava/lang/Object;
.source "UIPasswordDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog;->setViews(Ljava/lang/String;Ljava/lang/String;IILcom/miui/video/player/service/localvideo/ui/UIPasswordDialog$IPasswordListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog$6;->this$0:Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog$6;->this$0:Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog;->access$700(Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object p1

    sget v0, Lcom/miui/video/player/service/R$string;->t_lv_password_null:I

    invoke-virtual {p1, v0}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(I)Lcom/miui/video/common/library/utils/ToastUtils;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object p1

    sget v0, Lcom/miui/video/player/service/R$string;->t_lv_password_limit:I

    invoke-virtual {p1, v0}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(I)Lcom/miui/video/common/library/utils/ToastUtils;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog$6;->this$0:Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog;->access$600(Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog;)Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog$IPasswordListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog$6;->this$0:Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog;->access$600(Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog;)Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog$IPasswordListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog$IPasswordListener;->onConfirmPassword(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
