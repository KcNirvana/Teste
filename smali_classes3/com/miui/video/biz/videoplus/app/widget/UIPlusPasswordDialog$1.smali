.class Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$1;
.super Ljava/lang/Object;
.source "UIPlusPasswordDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->initViewsEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$1;->this$0:Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    sget-object p2, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$Mode;->SET_PASSWORD:Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$Mode;

    iget-object p3, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$1;->this$0:Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;

    invoke-static {p3}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->access$000(Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;)Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$Mode;

    move-result-object p3

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-ne p2, p3, :cond_0

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$1;->this$0:Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;

    invoke-static {p2}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->access$100(Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;)Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;

    move-result-object p2

    invoke-virtual {p2, v0, p4, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->setButtonEnabled(ZZZ)V

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$1;->this$0:Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;

    invoke-static {p2}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->access$100(Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;)Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;

    move-result-object p2

    sget p3, Lcom/miui/video/biz/videoplus/R$color;->selector_click:I

    invoke-virtual {p2, p4, p3}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->setMiddleButtonColor(II)V

    :cond_0
    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$1;->this$0:Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;

    invoke-static {p2}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->access$200(Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;)Landroid/widget/TextView;

    move-result-object p2

    const-string p3, ""

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$1;->this$0:Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;

    invoke-static {p2}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->access$300(Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;)Landroid/widget/TextView;

    move-result-object p2

    const-string p3, ""

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$1;->this$0:Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;

    invoke-static {p2}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->access$400(Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;)Landroid/widget/TextView;

    move-result-object p2

    const-string p3, ""

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$1;->this$0:Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;

    invoke-static {p2}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->access$500(Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;)Landroid/widget/TextView;

    move-result-object p2

    const-string p3, ""

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$1;->this$0:Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;

    invoke-static {p2}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->access$200(Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;)Landroid/widget/TextView;

    move-result-object p2

    sget p3, Lcom/miui/video/biz/videoplus/R$drawable;->shape_bg_corners_c10c2:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$1;->this$0:Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;

    invoke-static {p2}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->access$300(Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;)Landroid/widget/TextView;

    move-result-object p2

    sget p3, Lcom/miui/video/biz/videoplus/R$drawable;->shape_bg_corners_c10c2:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$1;->this$0:Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;

    invoke-static {p2}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->access$400(Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;)Landroid/widget/TextView;

    move-result-object p2

    sget p3, Lcom/miui/video/biz/videoplus/R$drawable;->shape_bg_corners_c10c2:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$1;->this$0:Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;

    invoke-static {p2}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->access$500(Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;)Landroid/widget/TextView;

    move-result-object p2

    sget p3, Lcom/miui/video/biz/videoplus/R$drawable;->shape_bg_corners_c10c2:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_1

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$1;->this$0:Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;

    invoke-static {p2}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->access$200(Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;)Landroid/widget/TextView;

    move-result-object p2

    invoke-interface {p1, p4, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$1;->this$0:Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;

    invoke-static {p2}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->access$200(Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;)Landroid/widget/TextView;

    move-result-object p2

    sget p3, Lcom/miui/video/biz/videoplus/R$drawable;->shape_bg_corners_c10c13:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    const/4 p3, 0x2

    if-le p2, v0, :cond_2

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$1;->this$0:Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;

    invoke-static {p2}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->access$300(Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;)Landroid/widget/TextView;

    move-result-object p2

    invoke-interface {p1, v0, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$1;->this$0:Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;

    invoke-static {p2}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->access$300(Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;)Landroid/widget/TextView;

    move-result-object p2

    sget v1, Lcom/miui/video/biz/videoplus/R$drawable;->shape_bg_corners_c10c13:I

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    const/4 v1, 0x3

    if-le p2, p3, :cond_3

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$1;->this$0:Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;

    invoke-static {p2}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->access$400(Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;)Landroid/widget/TextView;

    move-result-object p2

    invoke-interface {p1, p3, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$1;->this$0:Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;

    invoke-static {p2}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->access$400(Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;)Landroid/widget/TextView;

    move-result-object p2

    sget p3, Lcom/miui/video/biz/videoplus/R$drawable;->shape_bg_corners_c10c13:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-le p2, v1, :cond_5

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$1;->this$0:Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;

    invoke-static {p2}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->access$500(Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;)Landroid/widget/TextView;

    move-result-object p2

    const/4 p3, 0x4

    invoke-interface {p1, v1, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$1;->this$0:Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;

    invoke-static {p2}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->access$500(Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;)Landroid/widget/TextView;

    move-result-object p2

    sget p3, Lcom/miui/video/biz/videoplus/R$drawable;->shape_bg_corners_c10c13:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    sget-object p2, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$Mode;->SET_PASSWORD:Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$Mode;

    iget-object p3, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$1;->this$0:Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;

    invoke-static {p3}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->access$000(Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;)Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$Mode;

    move-result-object p3

    if-ne p2, p3, :cond_4

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$1;->this$0:Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->access$100(Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;)Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;

    move-result-object p1

    invoke-virtual {p1, v0, v0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->setButtonEnabled(ZZZ)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$1;->this$0:Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->access$100(Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;)Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;

    move-result-object p1

    sget p2, Lcom/miui/video/biz/videoplus/R$color;->c_13:I

    invoke-virtual {p1, p2, p4}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->setMiddleButtonColor(II)V

    goto :goto_0

    :cond_4
    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$1;->this$0:Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;

    invoke-static {p2}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->access$600(Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;)Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$IPasswordListener;

    move-result-object p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$1;->this$0:Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;

    invoke-static {p2}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->access$600(Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;)Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$IPasswordListener;

    move-result-object p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$1;->this$0:Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;

    invoke-interface {p2, p1, p3}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$IPasswordListener;->onCheckPassword(Ljava/lang/String;Lcom/miui/video/biz/videoplus/app/interfaces/IEditListener;)V

    :cond_5
    :goto_0
    return-void
.end method
