.class final Lcom/ali/user/mobile/register/a/d;
.super Landroid/os/Handler;
.source "StateUtils.java"


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    const/4 v0, -0x1

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/ali/user/mobile/register/b;->a()Lcom/ali/user/mobile/register/b;

    move-result-object v0

    iget-object v0, v0, Lcom/ali/user/mobile/register/b;->c:Lcom/ali/user/mobile/register/c/a;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/ali/user/mobile/register/c/a;->a()Lcom/ali/user/mobile/register/a/b;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/register/a/c;->a(Lcom/ali/user/mobile/register/a/b;)V

    goto :goto_0
.end method
