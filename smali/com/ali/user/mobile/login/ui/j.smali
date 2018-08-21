.class Lcom/ali/user/mobile/login/ui/j;
.super Ljava/lang/Object;
.source "BaseLoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/login/ui/BaseLoginActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/BaseLoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/j;->a:Lcom/ali/user/mobile/login/ui/BaseLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/j;->a:Lcom/ali/user/mobile/login/ui/BaseLoginActivity;

    new-instance v1, Lcom/ali/user/mobile/register/Account;

    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/j;->a:Lcom/ali/user/mobile/login/ui/BaseLoginActivity;

    invoke-virtual {v2}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->getLoginAccount()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ali/user/mobile/register/Account;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->toRegist(Lcom/ali/user/mobile/register/Account;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/j;->a:Lcom/ali/user/mobile/login/ui/BaseLoginActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->clearPassword()V

    return-void
.end method
