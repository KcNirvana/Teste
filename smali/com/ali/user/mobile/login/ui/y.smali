.class Lcom/ali/user/mobile/login/ui/y;
.super Ljava/lang/Object;
.source "LoginQuerypwdActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/y;->b:Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;

    iput-object p2, p0, Lcom/ali/user/mobile/login/ui/y;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/y;->b:Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/y;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;->access$100(Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;Ljava/lang/String;)V

    return-void
.end method
