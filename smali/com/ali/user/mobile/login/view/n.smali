.class Lcom/ali/user/mobile/login/view/n;
.super Ljava/lang/Object;
.source "PasswordLoginView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/login/view/PasswordLoginView;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/view/PasswordLoginView;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/login/view/n;->a:Lcom/ali/user/mobile/login/view/PasswordLoginView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/n;->a:Lcom/ali/user/mobile/login/view/PasswordLoginView;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/view/PasswordLoginView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/view/n;->a:Lcom/ali/user/mobile/login/view/PasswordLoginView;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/view/PasswordLoginView;->hideLoginHistory()V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/n;->a:Lcom/ali/user/mobile/login/view/PasswordLoginView;

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/login/view/PasswordLoginView;->closeInputMethod(Landroid/view/View;)V

    return-void
.end method
