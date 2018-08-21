.class Lcom/ali/user/mobile/ui/widget/q;
.super Ljava/lang/Object;
.source "APSixNumberPwdInputBox.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/ui/widget/o;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/ui/widget/o;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/q;->a:Lcom/ali/user/mobile/ui/widget/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/q;->a:Lcom/ali/user/mobile/ui/widget/o;

    iget-object v0, v0, Lcom/ali/user/mobile/ui/widget/o;->a:Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;

    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->access$100(Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/q;->a:Lcom/ali/user/mobile/ui/widget/o;

    iget-object v1, v1, Lcom/ali/user/mobile/ui/widget/o;->a:Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;

    invoke-static {v1}, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->access$800(Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/q;->a:Lcom/ali/user/mobile/ui/widget/o;

    iget-object v0, v0, Lcom/ali/user/mobile/ui/widget/o;->a:Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/q;->a:Lcom/ali/user/mobile/ui/widget/o;

    iget-object v1, v1, Lcom/ali/user/mobile/ui/widget/o;->a:Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;

    invoke-static {v1}, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->access$100(Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->access$802(Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/q;->a:Lcom/ali/user/mobile/ui/widget/o;

    iget-object v0, v0, Lcom/ali/user/mobile/ui/widget/o;->a:Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;

    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->access$700(Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;)Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox$a;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/q;->a:Lcom/ali/user/mobile/ui/widget/o;

    iget-object v1, v1, Lcom/ali/user/mobile/ui/widget/o;->a:Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;

    invoke-static {v1}, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->access$600(Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;)I

    move-result v1

    iget-object v2, p0, Lcom/ali/user/mobile/ui/widget/q;->a:Lcom/ali/user/mobile/ui/widget/o;

    iget-object v2, v2, Lcom/ali/user/mobile/ui/widget/o;->a:Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;

    invoke-static {v2}, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->access$000(Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;)Lcom/ali/user/mobile/ui/widget/APEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ali/user/mobile/ui/widget/APEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox$a;->pwdInputed(ILandroid/text/Editable;)V

    :cond_0
    return-void
.end method
