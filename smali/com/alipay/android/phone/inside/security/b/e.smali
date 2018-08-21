.class public Lcom/alipay/android/phone/inside/security/b/e;
.super Ljava/lang/Object;
.source "SsoLoginUtils.java"


# static fields
.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/phone/inside/security/b/e;->a:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    sget-boolean v0, Lcom/alipay/android/phone/inside/security/b/e;->a:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInitializer()Lcom/alibaba/wireless/security/open/initialize/IInitializeComponent;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/inside/security/b/f;

    invoke-direct {v1}, Lcom/alipay/android/phone/inside/security/b/f;-><init>()V

    invoke-interface {v0, v1}, Lcom/alibaba/wireless/security/open/initialize/IInitializeComponent;->registerInitFinishListener(Lcom/alibaba/wireless/security/open/initialize/IInitializeComponent$IInitFinishListener;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/android/phone/inside/security/b/g;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/inside/security/b/g;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/phone/inside/security/b/e;->a:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "SsoLoginUtils"

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/phone/inside/security/b/e;->a:Z

    goto :goto_0
.end method
