.class Lcom/ali/user/mobile/login/view/j;
.super Ljava/lang/Object;
.source "PasswordLoginView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Landroid/view/View$OnFocusChangeListener;

.field final synthetic b:Lcom/ali/user/mobile/login/view/PasswordLoginView;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/view/PasswordLoginView;Landroid/view/View$OnFocusChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/login/view/j;->b:Lcom/ali/user/mobile/login/view/PasswordLoginView;

    iput-object p2, p0, Lcom/ali/user/mobile/login/view/j;->a:Landroid/view/View$OnFocusChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/j;->b:Lcom/ali/user/mobile/login/view/PasswordLoginView;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/view/PasswordLoginView;->hideLoginHistory()V

    :goto_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/view/j;->a:Landroid/view/View$OnFocusChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/j;->a:Landroid/view/View$OnFocusChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/login/view/j;->b:Lcom/ali/user/mobile/login/view/PasswordLoginView;

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/j;->b:Lcom/ali/user/mobile/login/view/PasswordLoginView;

    iget-object v1, v1, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mAccountInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-virtual {v1}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/login/view/PasswordLoginView;->access$000(Lcom/ali/user/mobile/login/view/PasswordLoginView;Ljava/lang/String;)V

    goto :goto_0
.end method
