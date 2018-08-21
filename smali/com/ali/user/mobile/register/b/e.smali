.class Lcom/ali/user/mobile/register/b/e;
.super Ljava/lang/Object;
.source "RPCRouter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/register/b/c;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/register/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/register/b/e;->a:Lcom/ali/user/mobile/register/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-static {}, Lcom/ali/user/mobile/register/b;->a()Lcom/ali/user/mobile/register/b;

    move-result-object v0

    iget-object v0, v0, Lcom/ali/user/mobile/register/b;->c:Lcom/ali/user/mobile/register/c/a;

    if-nez v0, :cond_0

    const-string/jumbo v0, "Reg_RPCRouter"

    const-string/jumbo v1, "207 null action center"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "m"

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/register/c/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
