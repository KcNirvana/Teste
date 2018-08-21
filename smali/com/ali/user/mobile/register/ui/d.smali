.class Lcom/ali/user/mobile/register/ui/d;
.super Ljava/lang/Object;
.source "AliUserRegisterSixPasswordActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/rpc/vo/mobilegw/GwCommonRes;

.field final synthetic b:Lcom/ali/user/mobile/register/ui/AliUserRegisterSixPasswordActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterSixPasswordActivity;Lcom/ali/user/mobile/rpc/vo/mobilegw/GwCommonRes;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/register/ui/d;->b:Lcom/ali/user/mobile/register/ui/AliUserRegisterSixPasswordActivity;

    iput-object p2, p0, Lcom/ali/user/mobile/register/ui/d;->a:Lcom/ali/user/mobile/rpc/vo/mobilegw/GwCommonRes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/d;->b:Lcom/ali/user/mobile/register/ui/AliUserRegisterSixPasswordActivity;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/d;->a:Lcom/ali/user/mobile/rpc/vo/mobilegw/GwCommonRes;

    iget-object v1, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/GwCommonRes;->mobileNo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v2}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSixPasswordActivity;->goLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/d;->b:Lcom/ali/user/mobile/register/ui/AliUserRegisterSixPasswordActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSixPasswordActivity;->finish()V

    return-void
.end method
