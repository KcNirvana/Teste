.class Lcom/ali/user/mobile/info/c;
.super Ljava/lang/Object;
.source "AppInfo.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/info/AppInfo;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/info/AppInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/info/c;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/info/c;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-static {v1}, Lcom/ali/user/mobile/info/AppInfo;->access$500(Lcom/ali/user/mobile/info/AppInfo;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/info/AppInfo;->access$600(Lcom/ali/user/mobile/info/AppInfo;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/ali/user/mobile/info/c;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-static {v0}, Lcom/ali/user/mobile/info/AppInfo;->access$300(Lcom/ali/user/mobile/info/AppInfo;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    iget-object v0, p0, Lcom/ali/user/mobile/info/c;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-static {v0}, Lcom/ali/user/mobile/info/AppInfo;->access$100(Lcom/ali/user/mobile/info/AppInfo;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "AppInfo"

    const-string/jumbo v2, "acquire exception"

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/info/c;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-static {v0}, Lcom/ali/user/mobile/info/AppInfo;->access$100(Lcom/ali/user/mobile/info/AppInfo;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ali/user/mobile/info/c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
