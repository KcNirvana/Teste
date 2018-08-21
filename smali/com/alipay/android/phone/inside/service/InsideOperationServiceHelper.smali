.class public Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;
.super Ljava/lang/Object;
.source "InsideOperationServiceHelper.java"


# instance fields
.field private mAlipayCodeService:Lcom/alipay/android/phone/inside/a/b;

.field private mAlipayInsideService:Lcom/alipay/android/phone/inside/a/c;

.field private mAlipayRemoteCallback:Lcom/alipay/android/phone/inside/a/d;

.field private mAlipayServiceConnection:Landroid/content/ServiceConnection;

.field private mCallback:Lcom/alipay/android/phone/inside/a/f;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation
.end field

.field private mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mInsideIntercation:Lcom/alipay/android/phone/inside/a/e;

.field private mInsideServiceConnection:Landroid/content/ServiceConnection;

.field private mLock:Ljava/lang/Object;

.field private remoteAlipayBindCode:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

.field private remoteInsideBindCode:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

.field private unLockScreenListener:Lcom/alipay/android/phone/inside/service/InsideOperationService$UnLockScreenListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/alipay/android/phone/inside/service/q;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/inside/service/q;-><init>(Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;)V

    iput-object v0, p0, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->mCallback:Lcom/alipay/android/phone/inside/a/f;

    new-instance v0, Lcom/alipay/android/phone/inside/service/r;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/inside/service/r;-><init>(Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;)V

    iput-object v0, p0, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->mAlipayRemoteCallback:Lcom/alipay/android/phone/inside/a/d;

    new-instance v0, Lcom/alipay/android/phone/inside/service/s;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/inside/service/s;-><init>(Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;)V

    iput-object v0, p0, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->mAlipayServiceConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/alipay/android/phone/inside/service/t;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/inside/service/t;-><init>(Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;)V

    iput-object v0, p0, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->mInsideServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;)Lcom/alipay/android/phone/inside/service/InsideOperationService$UnLockScreenListener;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->unLockScreenListener:Lcom/alipay/android/phone/inside/service/InsideOperationService$UnLockScreenListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->mContextRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;)Lcom/alipay/android/phone/inside/a/c;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->mAlipayInsideService:Lcom/alipay/android/phone/inside/a/c;

    return-object v0
.end method

.method static synthetic access$302(Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;Lcom/alipay/android/phone/inside/a/c;)Lcom/alipay/android/phone/inside/a/c;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->mAlipayInsideService:Lcom/alipay/android/phone/inside/a/c;

    return-object p1
.end method

.method static synthetic access$400(Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;)Lcom/alipay/android/phone/inside/a/b;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->mAlipayCodeService:Lcom/alipay/android/phone/inside/a/b;

    return-object v0
.end method

.method static synthetic access$402(Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;Lcom/alipay/android/phone/inside/a/b;)Lcom/alipay/android/phone/inside/a/b;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->mAlipayCodeService:Lcom/alipay/android/phone/inside/a/b;

    return-object p1
.end method

.method static synthetic access$500(Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;Landroid/os/IBinder;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->linkToDeath(Landroid/os/IBinder;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;)Lcom/alipay/android/phone/inside/a/d;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->mAlipayRemoteCallback:Lcom/alipay/android/phone/inside/a/d;

    return-object v0
.end method

.method static synthetic access$702(Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;)Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->remoteAlipayBindCode:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    return-object p1
.end method

.method static synthetic access$800(Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;)Lcom/alipay/android/phone/inside/a/e;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->mInsideIntercation:Lcom/alipay/android/phone/inside/a/e;

    return-object v0
.end method

.method static synthetic access$802(Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;Lcom/alipay/android/phone/inside/a/e;)Lcom/alipay/android/phone/inside/a/e;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->mInsideIntercation:Lcom/alipay/android/phone/inside/a/e;

    return-object p1
.end method

.method static synthetic access$900(Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;)Lcom/alipay/android/phone/inside/a/f;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->mCallback:Lcom/alipay/android/phone/inside/a/f;

    return-object v0
.end method

.method private buildCommonBundle(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string/jumbo v3, "env"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "sdk_version"

    const-string/jumbo v2, "1.0.0"

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "sdk_env_info"

    invoke-static {v0}, Lcom/alipay/android/phone/inside/util/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized doInvoke(Landroid/content/Context;Landroid/os/Bundle;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/ServiceConnection;Z)Landroid/os/Bundle;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v2

    const-string/jumbo v3, "inside"

    const-string/jumbo v4, "InsideOperationServiceHelper::doInvoke start "

    invoke-interface {v2, v3, v4}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->buildCommonBundle(Landroid/content/Context;Landroid/os/Bundle;)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, p7}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->needInitService(Z)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v2

    const-class v3, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "initialize binding "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Lcom/alipay/android/phone/inside/log/api/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->SUCCESS:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    const-string/jumbo v3, "com.eg.android.AlipayGphone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {p1}, Lcom/alipay/android/phone/inside/commonbiz/c/a;->b(Landroid/content/Context;)Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    move-result-object v2

    move-object v3, v2

    :goto_0
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v2

    const-class v5, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "preCheck apk Sign:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lcom/alipay/android/phone/inside/log/api/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->SUCCESS:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    if-ne v3, v2, :cond_5

    if-eqz p4, :cond_0

    const-string/jumbo v2, "preLoadService"

    const/4 v5, 0x0

    invoke-virtual {p2, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1, p4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-wide/16 v6, 0x96

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    :cond_0
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v2

    const-class v5, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "start bindService"

    invoke-interface {v2, v5, v6}, Lcom/alipay/android/phone/inside/log/api/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/Thread;

    new-instance v5, Lcom/alipay/android/phone/inside/service/u;

    invoke-direct {v5, p0, p1, p3, p6}, Lcom/alipay/android/phone/inside/service/u;-><init>(Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;)V

    invoke-direct {v2, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v2

    const-string/jumbo v5, "inside"

    const-string/jumbo v6, "before bindService to lock wait"

    invoke-interface {v2, v5, v6}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v5, p0, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->mLock:Ljava/lang/Object;

    const-wide/16 v6, 0x1770

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V

    iget-object v5, p0, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->remoteAlipayBindCode:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    if-eqz v5, :cond_1

    const-string/jumbo v5, "code"

    iget-object v6, p0, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->remoteAlipayBindCode:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    invoke-virtual {v6}, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v5, p0, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->remoteInsideBindCode:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    if-eqz v5, :cond_2

    const-string/jumbo v5, "code"

    iget-object v6, p0, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->remoteInsideBindCode:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    invoke-virtual {v6}, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v5

    const-class v2, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "end bindService,remoteAlipayBindCode is "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v2, p0, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->remoteAlipayBindCode:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    if-eqz v2, :cond_3

    move v2, v0

    :goto_1
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, ",remoteInsideBindCode is "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, p0, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->remoteInsideBindCode:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    if-eqz v7, :cond_4

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v6, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const-string/jumbo v0, "code"

    invoke-virtual {v3}, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "inside"

    const-string/jumbo v2, "InsideOperationServiceHelper::doInvoke end"

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v4

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move v2, v1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    :try_start_5
    const-string/jumbo v0, "checkSignResult"

    invoke-virtual {v3}, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getExceptionLogger()Lcom/alipay/android/phone/inside/log/api/ex/a;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;->EXCEPTION:Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;

    invoke-virtual {v3}, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->getDesc()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v2, v5}, Lcom/alipay/android/phone/inside/log/api/ex/a;->a(Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-class v1, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "bind sucess! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    :cond_7
    move-object v3, v2

    goto/16 :goto_0
.end method

.method private linkToDeath(Landroid/os/IBinder;Z)V
    .locals 3

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Lcom/alipay/android/phone/inside/service/v;

    invoke-direct {v0, p0, p2}, Lcom/alipay/android/phone/inside/service/v;-><init>(Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;Z)V

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-class v2, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private needInitService(Z)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->mInsideIntercation:Lcom/alipay/android/phone/inside/a/e;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "inside"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "InsideOperationServiceHelper::needInitService > isInsideService:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", needInitService:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->mAlipayCodeService:Lcom/alipay/android/phone/inside/a/b;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method static parseAlipayScanResult(Landroid/os/Bundle;)Lcom/alipay/android/phone/inside/model/OperationResult;
    .locals 2

    new-instance v0, Lcom/alipay/android/phone/inside/model/OperationResult;

    invoke-direct {v0}, Lcom/alipay/android/phone/inside/model/OperationResult;-><init>()V

    if-nez p0, :cond_0

    new-instance v0, Lcom/alipay/android/phone/inside/model/OperationResult;

    sget-object v1, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->INTERNAL_CODE_ERROR:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/inside/model/OperationResult;-><init>(Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;)V

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, "statusCode"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->CODE_PARSE_ERROR:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/inside/model/OperationResult;->setCode(Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;)V

    const-string/jumbo v1, "\u7801\u503c\u89e3\u6790\u5f02\u5e38"

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/inside/model/OperationResult;->setResult(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    sget-object v1, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->SUCCESS:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/inside/model/OperationResult;->setCode(Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;)V

    const-string/jumbo v1, "\u7801\u503c\u6267\u884c\u6210\u529f"

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/inside/model/OperationResult;->setResult(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    sget-object v1, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->CODE_UNKNOWN:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/inside/model/OperationResult;->setCode(Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;)V

    const-string/jumbo v1, "\u7801\u503c\u65e0\u6cd5\u5904\u7406"

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/inside/model/OperationResult;->setResult(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static parseInsideResult(Landroid/os/Bundle;)Lcom/alipay/android/phone/inside/model/OperationResult;
    .locals 3

    new-instance v0, Lcom/alipay/android/phone/inside/model/OperationResult;

    invoke-direct {v0}, Lcom/alipay/android/phone/inside/model/OperationResult;-><init>()V

    if-eqz p0, :cond_0

    const-string/jumbo v1, "code"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "result"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->convert(Ljava/lang/String;)Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/inside/model/OperationResult;->setCode(Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;)V

    invoke-virtual {v0, v2}, Lcom/alipay/android/phone/inside/model/OperationResult;->setResult(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method auth(Landroid/content/Context;Landroid/os/Bundle;)Lcom/alipay/android/phone/inside/model/OperationResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string/jumbo v0, "action"

    sget-object v1, Lcom/alipay/android/phone/inside/model/ActionEnum;->AUTH:Lcom/alipay/android/phone/inside/model/ActionEnum;

    invoke-virtual {v1}, Lcom/alipay/android/phone/inside/model/ActionEnum;->getActionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->doInsideInvoke(Landroid/content/Context;Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->parseInsideResult(Landroid/os/Bundle;)Lcom/alipay/android/phone/inside/model/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method checkAlipayWalletStatus(Landroid/content/Context;Landroid/os/Bundle;)Lcom/alipay/android/phone/inside/model/OperationResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string/jumbo v0, "action"

    sget-object v1, Lcom/alipay/android/phone/inside/model/ActionEnum;->CHECK_ALIPAY_WALLET_STATUS:Lcom/alipay/android/phone/inside/model/ActionEnum;

    invoke-virtual {v1}, Lcom/alipay/android/phone/inside/model/ActionEnum;->getActionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->doInsideInvoke(Landroid/content/Context;Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->parseInsideResult(Landroid/os/Bundle;)Lcom/alipay/android/phone/inside/model/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method public doAlipayInvoke(Landroid/content/Context;Landroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v0, "com.alipay.android.phone.inside.IAlipayInsideService"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "com.eg.android.AlipayGphone"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "inside:sdk_version"

    const-string/jumbo v1, "1.0.0"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v0, "com.eg.android.AlipayGphone"

    const-string/jumbo v1, "com.alipay.android.app.TransProcessPayActivity"

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "com.eg.android.AlipayGphone"

    iget-object v6, p0, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->mAlipayServiceConnection:Landroid/content/ServiceConnection;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->doInvoke(Landroid/content/Context;Landroid/os/Bundle;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/ServiceConnection;Z)Landroid/os/Bundle;

    move-result-object v0

    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->mAlipayCodeService:Lcom/alipay/android/phone/inside/a/b;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-class v1, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "start Alipay code invoke"

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->mAlipayCodeService:Lcom/alipay/android/phone/inside/a/b;

    invoke-interface {v0, p2}, Lcom/alipay/android/phone/inside/a/b;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-class v2, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "end Alipay code invoke"

    invoke-interface {v1, v2, v3}, Lcom/alipay/android/phone/inside/log/api/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public doInsideInvoke(Landroid/content/Context;Landroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v0, "com.alipay.android.phone.inside.InteractionService"

    invoke-virtual {v3, p1, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "com.alipay.phone.inside.INSIDE_INTERACTION"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->mInsideServiceConnection:Landroid/content/ServiceConnection;

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->doInvoke(Landroid/content/Context;Landroid/os/Bundle;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/ServiceConnection;Z)Landroid/os/Bundle;

    move-result-object v0

    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->mInsideIntercation:Lcom/alipay/android/phone/inside/a/e;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p2}, Lcom/alipay/android/phone/inside/util/a;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "content"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->mInsideIntercation:Lcom/alipay/android/phone/inside/a/e;

    invoke-interface {v1, v0}, Lcom/alipay/android/phone/inside/a/e;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-class v2, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/android/phone/inside/log/api/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method doPush(Landroid/content/Context;Landroid/os/Bundle;)Lcom/alipay/android/phone/inside/model/OperationResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string/jumbo v0, "action"

    sget-object v1, Lcom/alipay/android/phone/inside/model/ActionEnum;->PUSH:Lcom/alipay/android/phone/inside/model/ActionEnum;

    invoke-virtual {v1}, Lcom/alipay/android/phone/inside/model/ActionEnum;->getActionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->doInsideInvoke(Landroid/content/Context;Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->parseInsideResult(Landroid/os/Bundle;)Lcom/alipay/android/phone/inside/model/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method loginOut(Landroid/content/Context;Landroid/os/Bundle;)Lcom/alipay/android/phone/inside/model/OperationResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string/jumbo v0, "action"

    sget-object v1, Lcom/alipay/android/phone/inside/model/ActionEnum;->LOGIN_OUT:Lcom/alipay/android/phone/inside/model/ActionEnum;

    invoke-virtual {v1}, Lcom/alipay/android/phone/inside/model/ActionEnum;->getActionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->doInsideInvoke(Landroid/content/Context;Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->parseInsideResult(Landroid/os/Bundle;)Lcom/alipay/android/phone/inside/model/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method pay(Landroid/content/Context;Landroid/os/Bundle;)Lcom/alipay/android/phone/inside/model/OperationResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string/jumbo v0, "action"

    sget-object v1, Lcom/alipay/android/phone/inside/model/ActionEnum;->PAY:Lcom/alipay/android/phone/inside/model/ActionEnum;

    invoke-virtual {v1}, Lcom/alipay/android/phone/inside/model/ActionEnum;->getActionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->doInsideInvoke(Landroid/content/Context;Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->parseInsideResult(Landroid/os/Bundle;)Lcom/alipay/android/phone/inside/model/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method preCheck(Landroid/content/Context;Landroid/os/Bundle;)Lcom/alipay/android/phone/inside/model/OperationResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string/jumbo v0, "action"

    sget-object v1, Lcom/alipay/android/phone/inside/model/ActionEnum;->PRE_CHECK:Lcom/alipay/android/phone/inside/model/ActionEnum;

    invoke-virtual {v1}, Lcom/alipay/android/phone/inside/model/ActionEnum;->getActionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->doInsideInvoke(Landroid/content/Context;Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->parseInsideResult(Landroid/os/Bundle;)Lcom/alipay/android/phone/inside/model/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method queryPayResult(Landroid/content/Context;Landroid/os/Bundle;)Lcom/alipay/android/phone/inside/model/OperationResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string/jumbo v0, "action"

    sget-object v1, Lcom/alipay/android/phone/inside/model/ActionEnum;->QUERY_PAY_RESULT:Lcom/alipay/android/phone/inside/model/ActionEnum;

    invoke-virtual {v1}, Lcom/alipay/android/phone/inside/model/ActionEnum;->getActionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->doInsideInvoke(Landroid/content/Context;Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->parseInsideResult(Landroid/os/Bundle;)Lcom/alipay/android/phone/inside/model/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method reqPayCode(Landroid/content/Context;Landroid/os/Bundle;)Lcom/alipay/android/phone/inside/model/OperationResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string/jumbo v0, "action"

    sget-object v1, Lcom/alipay/android/phone/inside/model/ActionEnum;->GENERATE_CODE:Lcom/alipay/android/phone/inside/model/ActionEnum;

    invoke-virtual {v1}, Lcom/alipay/android/phone/inside/model/ActionEnum;->getActionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->doInsideInvoke(Landroid/content/Context;Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->parseInsideResult(Landroid/os/Bundle;)Lcom/alipay/android/phone/inside/model/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method scanCode(Landroid/content/Context;Landroid/os/Bundle;)Lcom/alipay/android/phone/inside/model/OperationResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v4, 0x1

    const-string/jumbo v0, "action"

    sget-object v1, Lcom/alipay/android/phone/inside/model/ActionEnum;->SCAN_CODE:Lcom/alipay/android/phone/inside/model/ActionEnum;

    invoke-virtual {v1}, Lcom/alipay/android/phone/inside/model/ActionEnum;->getActionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "useInsideMode"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v4}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->doAlipayInvoke(Landroid/content/Context;Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "checkSignResult"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->parseAlipayScanResult(Landroid/os/Bundle;)Lcom/alipay/android/phone/inside/model/OperationResult;

    move-result-object v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-eqz v0, :cond_4

    invoke-virtual {p0, p1, p2, v4}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->doInsideInvoke(Landroid/content/Context;Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v3, "checkSignResult"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->parseInsideResult(Landroid/os/Bundle;)Lcom/alipay/android/phone/inside/model/OperationResult;

    move-result-object v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->convert(Ljava/lang/String;)Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/inside/model/OperationResult;->setCode(Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;)V

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->SUCCESS:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/model/OperationResult;->getCode()Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->convert(Ljava/lang/String;)Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->INVOKE_ALIPAY_NOT_INSTALL:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    :cond_3
    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/inside/model/OperationResult;->setCode(Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;)V

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->getDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/inside/model/OperationResult;->setResult(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method scanCodeV2(Landroid/content/Context;Landroid/os/Bundle;)Lcom/alipay/android/phone/inside/model/OperationResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string/jumbo v0, "action"

    sget-object v1, Lcom/alipay/android/phone/inside/model/ActionEnum;->SCAN_CODE_V2:Lcom/alipay/android/phone/inside/model/ActionEnum;

    invoke-virtual {v1}, Lcom/alipay/android/phone/inside/model/ActionEnum;->getActionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->doInsideInvoke(Landroid/content/Context;Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->parseInsideResult(Landroid/os/Bundle;)Lcom/alipay/android/phone/inside/model/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method setUnLockScreenListener(Lcom/alipay/android/phone/inside/service/InsideOperationService$UnLockScreenListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->unLockScreenListener:Lcom/alipay/android/phone/inside/service/InsideOperationService$UnLockScreenListener;

    return-void
.end method

.method switchChannel(Landroid/content/Context;Landroid/os/Bundle;)Lcom/alipay/android/phone/inside/model/OperationResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string/jumbo v0, "action"

    sget-object v1, Lcom/alipay/android/phone/inside/model/ActionEnum;->SWITCH_CHANNEL:Lcom/alipay/android/phone/inside/model/ActionEnum;

    invoke-virtual {v1}, Lcom/alipay/android/phone/inside/model/ActionEnum;->getActionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->doInsideInvoke(Landroid/content/Context;Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->parseInsideResult(Landroid/os/Bundle;)Lcom/alipay/android/phone/inside/model/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method switchUser(Landroid/content/Context;Landroid/os/Bundle;)Lcom/alipay/android/phone/inside/model/OperationResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string/jumbo v0, "action"

    sget-object v1, Lcom/alipay/android/phone/inside/model/ActionEnum;->SWITCH_USER:Lcom/alipay/android/phone/inside/model/ActionEnum;

    invoke-virtual {v1}, Lcom/alipay/android/phone/inside/model/ActionEnum;->getActionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->doInsideInvoke(Landroid/content/Context;Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->parseInsideResult(Landroid/os/Bundle;)Lcom/alipay/android/phone/inside/model/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method userIdentify(Landroid/content/Context;Landroid/os/Bundle;)Lcom/alipay/android/phone/inside/model/OperationResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string/jumbo v0, "action"

    sget-object v1, Lcom/alipay/android/phone/inside/model/ActionEnum;->USER_IDENTIFY:Lcom/alipay/android/phone/inside/model/ActionEnum;

    invoke-virtual {v1}, Lcom/alipay/android/phone/inside/model/ActionEnum;->getActionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->doInsideInvoke(Landroid/content/Context;Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->parseInsideResult(Landroid/os/Bundle;)Lcom/alipay/android/phone/inside/model/OperationResult;

    move-result-object v0

    return-object v0
.end method
