.class Lcom/ali/user/mobile/login/ui/m;
.super Ljava/lang/Object;
.source "BaseLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/login/ui/BaseLoginActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/BaseLoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/m;->a:Lcom/ali/user/mobile/login/ui/BaseLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    const-class v1, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lcom/ali/user/mobile/a/a;->i()Lcom/alipay/android/phone/inside/framework/service/b;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "loginStatus"

    const-string/jumbo v4, "success"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "BaseLoginActivity"

    const-string/jumbo v4, "\u767b\u5f55\u6210\u529f,\u56de\u8c03\u4e1a\u52a1\u65b9"

    invoke-static {v3, v4}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/alipay/android/phone/inside/framework/service/b;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ali/user/mobile/a/a;->a(Lcom/alipay/android/phone/inside/framework/service/b;)V

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BaseLoginActivity"

    const-string/jumbo v2, "callback inside error"

    invoke-static {v1, v2, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
