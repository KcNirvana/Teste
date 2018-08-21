.class Lcom/ali/user/mobile/login/ui/p;
.super Ljava/lang/Object;
.source "BaseLoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/login/ui/BaseLoginActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/BaseLoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/p;->a:Lcom/ali/user/mobile/login/ui/BaseLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/p;->a:Lcom/ali/user/mobile/login/ui/BaseLoginActivity;

    const-string/jumbo v1, "UC-LOG-150512-09"

    const-string/jumbo v2, "logingetpwd"

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->writeClickLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/p;->a:Lcom/ali/user/mobile/login/ui/BaseLoginActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->clearPassword()V

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/p;->a:Lcom/ali/user/mobile/login/ui/BaseLoginActivity;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/p;->a:Lcom/ali/user/mobile/login/ui/BaseLoginActivity;

    invoke-virtual {v1}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->getLoginAccount()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->toForgetPassword(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
