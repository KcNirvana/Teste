.class Lcom/ali/user/mobile/external/LogoutInsideActivity$1;
.super Ljava/lang/Object;
.source "LogoutInsideActivity.java"

# interfaces
.implements Lcom/ali/user/mobile/login/c;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/external/LogoutInsideActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/external/LogoutInsideActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/external/LogoutInsideActivity$1;->this$0:Lcom/ali/user/mobile/external/LogoutInsideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 0

    return-void
.end method

.method public onFinish()V
    .locals 3

    const-class v1, Lcom/ali/user/mobile/external/LogoutInsideActivity;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/ali/user/mobile/a/a;->j()Lcom/alipay/android/phone/inside/framework/service/b;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, ""

    invoke-interface {v0, v2}, Lcom/alipay/android/phone/inside/framework/service/b;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ali/user/mobile/a/a;->b(Lcom/alipay/android/phone/inside/framework/service/b;)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/ali/user/mobile/external/LogoutInsideActivity$1;->this$0:Lcom/ali/user/mobile/external/LogoutInsideActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/external/LogoutInsideActivity;->dismissProgress()V

    iget-object v0, p0, Lcom/ali/user/mobile/external/LogoutInsideActivity$1;->this$0:Lcom/ali/user/mobile/external/LogoutInsideActivity;

    invoke-static {v0}, Lcom/ali/user/mobile/external/LogoutInsideActivity;->access$000(Lcom/ali/user/mobile/external/LogoutInsideActivity;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
