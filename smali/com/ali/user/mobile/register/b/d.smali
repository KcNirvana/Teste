.class Lcom/ali/user/mobile/register/b/d;
.super Ljava/lang/Object;
.source "RPCRouter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/base/BaseActivity;

.field final synthetic b:Lcom/ali/user/mobile/register/b/c;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/register/b/c;Lcom/ali/user/mobile/base/BaseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/register/b/d;->b:Lcom/ali/user/mobile/register/b/c;

    iput-object p2, p0, Lcom/ali/user/mobile/register/b/d;->a:Lcom/ali/user/mobile/base/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-static {}, Lcom/ali/user/mobile/register/b;->a()Lcom/ali/user/mobile/register/b;

    move-result-object v0

    iget-object v0, v0, Lcom/ali/user/mobile/register/b;->c:Lcom/ali/user/mobile/register/c/a;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/ali/user/mobile/register/a/a;

    invoke-direct {v1}, Lcom/ali/user/mobile/register/a/a;-><init>()V

    const-string/jumbo v2, "sendSms"

    iput-object v2, v1, Lcom/ali/user/mobile/register/a/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/ali/user/mobile/register/b/d;->a:Lcom/ali/user/mobile/base/BaseActivity;

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/register/c/a;->a(Lcom/ali/user/mobile/register/a/a;Lcom/ali/user/mobile/base/BaseActivity;)V

    goto :goto_0
.end method
