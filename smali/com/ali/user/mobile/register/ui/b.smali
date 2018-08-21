.class Lcom/ali/user/mobile/register/ui/b;
.super Ljava/lang/Object;
.source "AliUserRegisterSixPasswordActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/rpc/vo/mobilegw/GwCommonRes;

.field final synthetic b:Lcom/ali/user/mobile/register/ui/AliUserRegisterSixPasswordActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterSixPasswordActivity;Lcom/ali/user/mobile/rpc/vo/mobilegw/GwCommonRes;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/register/ui/b;->b:Lcom/ali/user/mobile/register/ui/AliUserRegisterSixPasswordActivity;

    iput-object p2, p0, Lcom/ali/user/mobile/register/ui/b;->a:Lcom/ali/user/mobile/rpc/vo/mobilegw/GwCommonRes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/b;->b:Lcom/ali/user/mobile/register/ui/AliUserRegisterSixPasswordActivity;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/b;->a:Lcom/ali/user/mobile/rpc/vo/mobilegw/GwCommonRes;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSixPasswordActivity;->afterSupplement(Lcom/ali/user/mobile/rpc/vo/mobilegw/GwCommonRes;)V

    return-void
.end method
