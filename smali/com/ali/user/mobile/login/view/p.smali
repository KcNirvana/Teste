.class Lcom/ali/user/mobile/login/view/p;
.super Ljava/lang/Object;
.source "SmsLoginView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/login/view/SmsLoginView;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/view/SmsLoginView;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/login/view/p;->a:Lcom/ali/user/mobile/login/view/SmsLoginView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/view/p;->a:Lcom/ali/user/mobile/login/view/SmsLoginView;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/view/SmsLoginView;->onAccountChanged(Ljava/lang/String;)V

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
