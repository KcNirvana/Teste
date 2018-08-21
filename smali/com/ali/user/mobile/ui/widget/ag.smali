.class Lcom/ali/user/mobile/ui/widget/ag;
.super Ljava/lang/Object;
.source "AUPhoneInputBox.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;)V
    .locals 1

    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/ag;->a:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/ag;->b:Z

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    iget-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/ag;->b:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "UC-ZC-161225-01"

    const-string/jumbo v1, "phoneinput"

    iget-object v2, p0, Lcom/ali/user/mobile/ui/widget/ag;->a:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;

    invoke-static {v2}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->access$000(Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/ali/user/mobile/register/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/ag;->b:Z

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/ag;->a:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;

    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->access$100(Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;)Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox$a;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/ag;->a:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;

    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->access$100(Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;)Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox$a;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/ag;->a:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;

    invoke-virtual {v1}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->getInputAreaCode()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/user/mobile/ui/widget/ag;->a:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;

    invoke-virtual {v2}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->getInputPhoneNo()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ali/user/mobile/ui/widget/ag;->a:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;

    invoke-virtual {v3}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->getCountryName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
