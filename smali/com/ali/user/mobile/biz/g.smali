.class Lcom/ali/user/mobile/biz/g;
.super Ljava/lang/Object;
.source "LogoutServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/login/c;

.field final synthetic b:Lcom/ali/user/mobile/biz/LogoutServiceImpl;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/biz/LogoutServiceImpl;Lcom/ali/user/mobile/login/c;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/biz/g;->b:Lcom/ali/user/mobile/biz/LogoutServiceImpl;

    iput-object p2, p0, Lcom/ali/user/mobile/biz/g;->a:Lcom/ali/user/mobile/login/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ali/user/mobile/biz/g;->b:Lcom/ali/user/mobile/biz/LogoutServiceImpl;

    invoke-static {v0}, Lcom/ali/user/mobile/biz/LogoutServiceImpl;->access$000(Lcom/ali/user/mobile/biz/LogoutServiceImpl;)Lcom/ali/user/mobile/account/bean/UserInfo;

    move-result-object v0

    new-instance v1, Lcom/ali/user/mobile/accountbiz/a/a/a;

    invoke-direct {v1}, Lcom/ali/user/mobile/accountbiz/a/a/a;-><init>()V

    const-string/jumbo v2, "LogoutNoToken"

    invoke-virtual {v1, v2, v0}, Lcom/ali/user/mobile/accountbiz/a/a/a;->a(Ljava/lang/String;Lcom/ali/user/mobile/account/bean/UserInfo;)V

    iget-object v0, p0, Lcom/ali/user/mobile/biz/g;->a:Lcom/ali/user/mobile/login/c;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/ali/user/mobile/biz/h;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/biz/h;-><init>(Lcom/ali/user/mobile/biz/g;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
