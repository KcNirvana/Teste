.class Lcom/ali/user/mobile/login/view/m;
.super Ljava/lang/Object;
.source "PasswordLoginView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/login/view/PasswordLoginView;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/view/PasswordLoginView;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/login/view/m;->a:Lcom/ali/user/mobile/login/view/PasswordLoginView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/m;->a:Lcom/ali/user/mobile/login/view/PasswordLoginView;

    const-string/jumbo v1, "YWUC-JTTYZH-C23"

    const-string/jumbo v2, "dropdown"

    const-string/jumbo v3, "loginAccountSelectView"

    invoke-virtual {v0, v1, v2, v3}, Lcom/ali/user/mobile/login/view/PasswordLoginView;->writeClickLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/m;->a:Lcom/ali/user/mobile/login/view/PasswordLoginView;

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/m;->a:Lcom/ali/user/mobile/login/view/PasswordLoginView;

    iget-object v1, v1, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mAccountInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/view/PasswordLoginView;->closeInputMethod(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/m;->a:Lcom/ali/user/mobile/login/view/PasswordLoginView;

    iget-object v0, v0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mLoginHistoryList:Lcom/ali/user/mobile/ui/widget/APListView;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/APListView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/m;->a:Lcom/ali/user/mobile/login/view/PasswordLoginView;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/view/PasswordLoginView;->showLoginHistory()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/view/m;->a:Lcom/ali/user/mobile/login/view/PasswordLoginView;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/view/PasswordLoginView;->hideLoginHistory()V

    goto :goto_0
.end method
