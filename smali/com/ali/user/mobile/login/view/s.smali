.class Lcom/ali/user/mobile/login/view/s;
.super Ljava/lang/Object;
.source "SmsLoginView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/ali/user/mobile/login/view/SmsLoginView;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/view/SmsLoginView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/login/view/s;->b:Lcom/ali/user/mobile/login/view/SmsLoginView;

    iput-object p2, p0, Lcom/ali/user/mobile/login/view/s;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    invoke-static {}, Lcom/ali/user/mobile/register/b;->a()Lcom/ali/user/mobile/register/b;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/s;->b:Lcom/ali/user/mobile/login/view/SmsLoginView;

    iget-object v1, v1, Lcom/ali/user/mobile/login/view/SmsLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    const/4 v2, 0x0

    new-instance v3, Lcom/ali/user/mobile/register/Account;

    iget-object v4, p0, Lcom/ali/user/mobile/login/view/s;->b:Lcom/ali/user/mobile/login/view/SmsLoginView;

    iget-object v4, v4, Lcom/ali/user/mobile/login/view/SmsLoginView;->mCountryCode:Ljava/lang/String;

    iget-object v5, p0, Lcom/ali/user/mobile/login/view/s;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/ali/user/mobile/login/view/s;->b:Lcom/ali/user/mobile/login/view/SmsLoginView;

    iget-object v6, v6, Lcom/ali/user/mobile/login/view/SmsLoginView;->mCountryName:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6}, Lcom/ali/user/mobile/register/Account;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/ali/user/mobile/register/b;->a(Landroid/app/Activity;Landroid/os/Bundle;Lcom/ali/user/mobile/register/Account;)V

    return-void
.end method
