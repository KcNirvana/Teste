.class Lcom/ali/user/mobile/biz/h;
.super Ljava/lang/Object;
.source "LogoutServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/biz/g;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/biz/g;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/biz/h;->a:Lcom/ali/user/mobile/biz/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/biz/h;->a:Lcom/ali/user/mobile/biz/g;

    iget-object v0, v0, Lcom/ali/user/mobile/biz/g;->a:Lcom/ali/user/mobile/login/c;

    invoke-interface {v0}, Lcom/ali/user/mobile/login/c;->onFinish()V

    return-void
.end method
