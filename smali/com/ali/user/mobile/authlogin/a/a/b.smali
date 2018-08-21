.class Lcom/ali/user/mobile/authlogin/a/a/b;
.super Ljava/lang/Object;
.source "AlipaySSOAuthLoginApiImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/authlogin/a/c;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/ali/user/mobile/authlogin/a/a/a;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/authlogin/a/a/a;Lcom/ali/user/mobile/authlogin/a/c;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/authlogin/a/a/b;->g:Lcom/ali/user/mobile/authlogin/a/a/a;

    iput-object p2, p0, Lcom/ali/user/mobile/authlogin/a/a/b;->a:Lcom/ali/user/mobile/authlogin/a/c;

    iput-object p3, p0, Lcom/ali/user/mobile/authlogin/a/a/b;->b:Landroid/app/Activity;

    iput-object p4, p0, Lcom/ali/user/mobile/authlogin/a/a/b;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/ali/user/mobile/authlogin/a/a/b;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/ali/user/mobile/authlogin/a/a/b;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/ali/user/mobile/authlogin/a/a/b;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ali/user/mobile/info/AppInfo;->getApdidtokenResultTimeout()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v0, v4, v0

    const-string/jumbo v3, "event"

    const-string/jumbo v4, "AliAuthLoginSDK_syncReqUuidTimeElapsed"

    const-string/jumbo v5, "ALIAUTH_0415_14"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v5, v0}, Lcom/ali/user/mobile/e/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/ali/user/mobile/authlogin/a/a/c;

    invoke-direct {v1, p0, v2}, Lcom/ali/user/mobile/authlogin/a/a/c;-><init>(Lcom/ali/user/mobile/authlogin/a/a/b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "AliAuth_AlipaySSOAuthLoginApiImpl"

    const-string/jumbo v3, "syncHandleApdidtoken thread error"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/ali/user/mobile/authlogin/a/a/b;->a:Lcom/ali/user/mobile/authlogin/a/c;

    const/16 v1, 0x3ed

    invoke-interface {v0, v1}, Lcom/ali/user/mobile/authlogin/a/c;->preAuthFailed(I)V

    goto :goto_0
.end method
