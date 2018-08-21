.class public Lcom/alipay/android/app/MspService;
.super Landroid/app/Service;
.source "MspService.java"


# static fields
.field private static final ACTION_ALIPAY:Ljava/lang/String; = "com.alipay.android.app.IAliPay"

.field private static final ACTION_ALIXPAY:Ljava/lang/String; = "com.alipay.android.app.IAlixPay"

.field private static final ACTION_GP_ALIPAY:Ljava/lang/String; = "com.eg.android.AlipayGphone.IAliPay"

.field private static final ACTION_GP_ALIXPAY:Ljava/lang/String; = "com.eg.android.AlipayGphone.IAlixPay"

.field private static mFirst:Z


# instance fields
.field private defaultExpHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private mAdapter:Lcom/alipay/android/app/n;

.field private uncaught:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/app/MspService;->mFirst:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/MspService;->defaultExpHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    new-instance v0, Lcom/alipay/android/app/q;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/q;-><init>(Lcom/alipay/android/app/MspService;)V

    iput-object v0, p0, Lcom/alipay/android/app/MspService;->uncaught:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/MspService;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/MspService;->defaultExpHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 7

    const/4 v1, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/alipay/android/app/MspService;->mAdapter:Lcom/alipay/android/app/n;

    if-nez v2, :cond_0

    new-instance v2, Lcom/alipay/android/app/d;

    invoke-direct {v2}, Lcom/alipay/android/app/d;-><init>()V

    iput-object v2, p0, Lcom/alipay/android/app/MspService;->mAdapter:Lcom/alipay/android/app/n;

    :cond_0
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

    invoke-static {}, Lcom/alipay/android/app/plugin/a/a;->a()Lcom/alipay/android/app/plugin/b;

    move-result-object v2

    const-string/jumbo v3, "mspservice_onbind"

    invoke-interface {v2, v3}, Lcom/alipay/android/app/plugin/b;->performanceBuilder(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/android/app/MspService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.eg.android.AlipayGphone"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/alipay/android/app/MspService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.eg.android.AlipayGphoneRC"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_1
    const-string/jumbo v1, "com.alipay.android.app.IAliPay"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "com.eg.android.AlipayGphone.IAliPay"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/MspService;->mAdapter:Lcom/alipay/android/app/n;

    invoke-interface {v0}, Lcom/alipay/android/app/n;->d()Landroid/os/IBinder;

    move-result-object v1

    :cond_3
    :goto_1
    return-object v1

    :cond_4
    iget-object v0, p0, Lcom/alipay/android/app/MspService;->mAdapter:Lcom/alipay/android/app/n;

    invoke-interface {v0}, Lcom/alipay/android/app/n;->e()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_1

    :cond_5
    const-string/jumbo v2, "com.alipay.android.app.IAliPay"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "com.eg.android.AlipayGphone.IAliPay"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/alipay/android/app/MspService;->mAdapter:Lcom/alipay/android/app/n;

    invoke-interface {v0}, Lcom/alipay/android/app/n;->d()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_1

    :cond_7
    const-string/jumbo v2, "com.alipay.android.app.IAlixPay"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string/jumbo v2, "com.eg.android.AlipayGphone.IAlixPay"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/alipay/android/app/MspService;->mAdapter:Lcom/alipay/android/app/n;

    invoke-interface {v0}, Lcom/alipay/android/app/n;->e()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_1

    :cond_9
    sget-boolean v0, Lcom/alipay/android/app/pay/a;->u:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/MspService;->mAdapter:Lcom/alipay/android/app/n;

    invoke-interface {v0}, Lcom/alipay/android/app/n;->f()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_1

    :cond_a
    move-object v0, v1

    goto/16 :goto_0
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

    sget-boolean v0, Lcom/alipay/android/app/MspService;->mFirst:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/d;

    invoke-direct {v0}, Lcom/alipay/android/app/d;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/MspService;->mAdapter:Lcom/alipay/android/app/n;

    const-string/jumbo v0, "phonecashiermsp#MspService"

    const-string/jumbo v1, "MspService.onCreate"

    const-string/jumbo v2, "load properties"

    invoke-static {v7, v0, v1, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/app/MspService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/sys/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/MspService;->defaultExpHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/MspService;->uncaught:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_1
    sget-boolean v0, Lcom/alipay/android/app/MspService;->mFirst:Z

    if-nez v0, :cond_2

    sput-boolean v7, Lcom/alipay/android/app/MspService;->mFirst:Z

    invoke-static {p0}, Lcom/alipay/android/app/MspInitAssistService;->initFirstCreate(Landroid/content/Context;)V

    :cond_2
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

    sput-boolean v0, Lcom/alipay/android/app/MspService;->mFirst:Z

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
