.class Lcom/ali/user/mobile/ui/widget/p;
.super Ljava/lang/Object;
.source "APSixNumberPwdInputBox.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/ui/widget/o;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/ui/widget/o;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/p;->a:Lcom/ali/user/mobile/ui/widget/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/p;->a:Lcom/ali/user/mobile/ui/widget/o;

    iget-object v0, v0, Lcom/ali/user/mobile/ui/widget/o;->a:Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;

    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->access$500(Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;)Lcom/ali/user/mobile/ui/widget/APBasePwdInputBox$a;

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/p;->a:Lcom/ali/user/mobile/ui/widget/o;

    iget-object v0, v0, Lcom/ali/user/mobile/ui/widget/o;->a:Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;

    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->access$600(Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;)I

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/p;->a:Lcom/ali/user/mobile/ui/widget/o;

    iget-object v0, v0, Lcom/ali/user/mobile/ui/widget/o;->a:Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;

    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->access$000(Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;)Lcom/ali/user/mobile/ui/widget/APEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/APEditText;->getEditableText()Landroid/text/Editable;

    return-void
.end method
