.class Lcom/ali/user/mobile/login/view/l;
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

    iput-object p1, p0, Lcom/ali/user/mobile/login/view/l;->b:Lcom/ali/user/mobile/login/view/PasswordLoginView;

    iput-object p2, p0, Lcom/ali/user/mobile/login/view/l;->a:Landroid/view/View$OnFocusChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/l;->b:Lcom/ali/user/mobile/login/view/PasswordLoginView;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/view/PasswordLoginView;->hideLoginHistory()V

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/view/l;->a:Landroid/view/View$OnFocusChangeListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/l;->a:Landroid/view/View$OnFocusChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    :cond_1
    return-void
.end method
