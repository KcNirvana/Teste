.class Lcom/ali/user/mobile/login/ui/e;
.super Ljava/lang/Object;
.source "AliUserLoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/e;->a:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/e;->a:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->clearPassword()V

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/e;->a:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->showInputPassword()V

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/e;->a:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->requestPasswordFocus()V

    return-void
.end method
