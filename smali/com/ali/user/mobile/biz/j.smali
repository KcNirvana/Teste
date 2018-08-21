.class Lcom/ali/user/mobile/biz/j;
.super Ljava/lang/Object;
.source "LogoutServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/biz/LogoutServiceImpl;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/biz/LogoutServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/biz/j;->a:Lcom/ali/user/mobile/biz/LogoutServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/biz/j;->a:Lcom/ali/user/mobile/biz/LogoutServiceImpl;

    invoke-static {v0}, Lcom/ali/user/mobile/biz/LogoutServiceImpl;->access$000(Lcom/ali/user/mobile/biz/LogoutServiceImpl;)Lcom/ali/user/mobile/account/bean/UserInfo;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/biz/j;->a:Lcom/ali/user/mobile/biz/LogoutServiceImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/biz/LogoutServiceImpl;->logout(Lcom/ali/user/mobile/login/c;)V

    goto :goto_0
.end method
