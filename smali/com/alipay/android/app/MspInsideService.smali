.class public Lcom/alipay/android/app/MspInsideService;
.super Landroid/app/Service;
.source "MspInsideService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/MspInsideService$a;
    }
.end annotation


# static fields
.field private static final ACTION_ALIINSIDEPAY:Ljava/lang/String; = "com.alipay.android.app.insidePay"

.field private static mFirst:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/app/MspInsideService;->mFirst:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 7

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v2, 0x4

    const-string/jumbo v3, "phonecashiermsp#MspService"

    const-string/jumbo v4, "MspService.onBind"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mspservice onbind"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "com.alipay.android.app.insidePay"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/alipay/android/app/MspInsideService$a;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/MspInsideService$a;-><init>(Lcom/alipay/android/app/MspInsideService;)V

    :cond_0
    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public onCreate()V
    .locals 8

    const/4 v7, 0x1

    const-string/jumbo v0, "phonecashiermsp#MspService"

    const-string/jumbo v1, "MspService.onCreate"

    const-string/jumbo v2, "start"

    invoke-static {v7, v0, v1, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/plugin/a/a;->a()Lcom/alipay/android/app/plugin/b;

    move-result-object v0

    const-string/jumbo v1, "mspservice_oncreated_start"

    invoke-interface {v0, v1}, Lcom/alipay/android/app/plugin/b;->performanceBuilder(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v0

    const/4 v2, 0x4

    const-string/jumbo v3, "phonecashiermsp#MspService"

    const-string/jumbo v4, "MspService.onCreate"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "process run"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/alipay/android/app/sys/b;->a(J)V

    invoke-static {}, Lcom/alipay/android/app/plugin/a/a;->a()Lcom/alipay/android/app/plugin/b;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alipay/android/app/plugin/b;->loadProperties(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/alipay/android/app/MspInsideService;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/inside/cashier/c;->a(Landroid/app/Application;)V

    sget-boolean v0, Lcom/alipay/android/app/MspInsideService;->mFirst:Z

    if-nez v0, :cond_0

    sput-boolean v7, Lcom/alipay/android/app/MspInsideService;->mFirst:Z

    invoke-static {p0}, Lcom/alipay/android/app/MspInitAssistService;->initFirstCreate(Landroid/content/Context;)V

    :cond_0
    invoke-static {}, Lcom/alipay/android/app/MspInitAssistService;->initServiceCreate()V

    const-string/jumbo v0, "phonecashiermsp#MspService"

    const-string/jumbo v1, "MspService.onCreate"

    const-string/jumbo v2, "LauncherApplication startup : MspService onCreate end"

    invoke-static {v7, v0, v1, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/plugin/a/a;->a()Lcom/alipay/android/app/plugin/b;

    move-result-object v0

    const-string/jumbo v1, "mspservice_oncreated_end"

    invoke-interface {v0, v1}, Lcom/alipay/android/app/plugin/b;->performanceBuilder(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    invoke-static {}, Lcom/alipay/android/app/MspInitAssistService;->stopServiceDestory()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/app/MspInsideService;->mFirst:Z

    const/4 v0, 0x4

    const-string/jumbo v1, "phonecashiermsp#MspService"

    const-string/jumbo v2, "MspService.onDestroy"

    const-string/jumbo v3, "has been executed"

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    const/4 v0, 0x2

    return v0
.end method
