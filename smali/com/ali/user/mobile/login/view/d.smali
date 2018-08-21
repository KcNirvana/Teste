.class Lcom/ali/user/mobile/login/view/d;
.super Ljava/lang/Object;
.source "LoginView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/login/view/LoginView;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/view/LoginView;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/login/view/d;->a:Lcom/ali/user/mobile/login/view/LoginView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "UC-RLSB-150901-09"

    const-string/jumbo v1, "failtopassword"

    invoke-static {v0, v1, v2, v2, v2}, Lcom/ali/user/mobile/e/c;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/d;->a:Lcom/ali/user/mobile/login/view/LoginView;

    iget-object v0, v0, Lcom/ali/user/mobile/login/view/LoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->enterState(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/d;->a:Lcom/ali/user/mobile/login/view/LoginView;

    iget-object v0, v0, Lcom/ali/user/mobile/login/view/LoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->requestPasswordFocus()V

    return-void
.end method
