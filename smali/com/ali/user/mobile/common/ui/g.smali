.class Lcom/ali/user/mobile/common/ui/g;
.super Ljava/lang/Object;
.source "AbsVerifySmsActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/common/ui/g;->a:Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/g;->a:Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->hideError()V

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/g;->a:Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;

    invoke-static {v0}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->access$500(Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;)Lcom/ali/user/mobile/ui/widget/AUBoxInput;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/g;->a:Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;

    invoke-static {v0}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->access$500(Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;)Lcom/ali/user/mobile/ui/widget/AUBoxInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUBoxInput;->isFull()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/g;->a:Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;

    iget-object v1, p0, Lcom/ali/user/mobile/common/ui/g;->a:Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;

    invoke-static {v1}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->access$500(Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;)Lcom/ali/user/mobile/ui/widget/AUBoxInput;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->closeInputMethod(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/g;->a:Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->hideHints()V

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/g;->a:Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;

    iget-object v1, p0, Lcom/ali/user/mobile/common/ui/g;->a:Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;

    invoke-static {v1}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->access$500(Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;)Lcom/ali/user/mobile/ui/widget/AUBoxInput;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/ui/widget/AUBoxInput;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->verifySms(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
