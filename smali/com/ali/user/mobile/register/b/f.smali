.class Lcom/ali/user/mobile/register/b/f;
.super Ljava/lang/Object;
.source "RPCRouter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/register/a/b;

.field final synthetic b:Lcom/ali/user/mobile/base/BaseActivity;

.field final synthetic c:Lcom/ali/user/mobile/register/b/c;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/register/b/c;Lcom/ali/user/mobile/register/a/b;Lcom/ali/user/mobile/base/BaseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/register/b/f;->c:Lcom/ali/user/mobile/register/b/c;

    iput-object p2, p0, Lcom/ali/user/mobile/register/b/f;->a:Lcom/ali/user/mobile/register/a/b;

    iput-object p3, p0, Lcom/ali/user/mobile/register/b/f;->b:Lcom/ali/user/mobile/base/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const-string/jumbo v0, "UC-ZC-161209-02"

    const-string/jumbo v1, "loginnow"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/register/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/b/f;->c:Lcom/ali/user/mobile/register/b/c;

    iget-object v1, p0, Lcom/ali/user/mobile/register/b/f;->a:Lcom/ali/user/mobile/register/a/b;

    iget-object v2, p0, Lcom/ali/user/mobile/register/b/f;->b:Lcom/ali/user/mobile/base/BaseActivity;

    const-string/jumbo v3, "withlogintoken"

    iget-object v4, p0, Lcom/ali/user/mobile/register/b/f;->a:Lcom/ali/user/mobile/register/a/b;

    iget-object v4, v4, Lcom/ali/user/mobile/register/a/b;->c:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;

    iget-object v4, v4, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->loginToken:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ali/user/mobile/register/b/c;->a(Lcom/ali/user/mobile/register/b/c;Lcom/ali/user/mobile/register/a/b;Lcom/ali/user/mobile/base/BaseActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
