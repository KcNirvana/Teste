.class public Lcom/alipay/android/app/pay/MspInitAssistServiceImpl;
.super Lcom/alipay/android/app/MspInitAssistService;
.source "MspInitAssistServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/pay/MspInitAssistServiceImpl$a;
    }
.end annotation


# instance fields
.field private a:Lcom/alipay/android/app/pay/channel/ChannelInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/MspInitAssistService;-><init>()V

    return-void
.end method


# virtual methods
.method public demoPay(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/alipay/android/app/pay/PayTask;

    new-instance v1, Lcom/alipay/android/app/pay/f;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/pay/f;-><init>(Lcom/alipay/android/app/pay/MspInitAssistServiceImpl;)V

    invoke-direct {v0, p1, v1}, Lcom/alipay/android/app/pay/PayTask;-><init>(Landroid/app/Activity;Lcom/alipay/android/app/pay/PayTask$OnPayListener;)V

    const-string/jumbo v1, ""

    invoke-virtual {v0, p2, v1}, Lcom/alipay/android/app/pay/PayTask;->pay(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getChannelInfo()Lcom/alipay/android/app/pay/channel/ChannelInfo;
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/pay/MspInitAssistServiceImpl;->a:Lcom/alipay/android/app/pay/channel/ChannelInfo;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "com.alipay.android.app.pay.channel."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/app/pay/a;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/pay/channel/ChannelInfo;

    iput-object v0, p0, Lcom/alipay/android/app/pay/MspInitAssistServiceImpl;->a:Lcom/alipay/android/app/pay/channel/ChannelInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/pay/MspInitAssistServiceImpl;->a:Lcom/alipay/android/app/pay/channel/ChannelInfo;

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSdkAlixPayStub(Lcom/alipay/android/app/n;)Landroid/os/IBinder;
    .locals 1

    new-instance v0, Lcom/alipay/android/app/pay/MspInitAssistServiceImpl$a;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/app/pay/MspInitAssistServiceImpl$a;-><init>(Lcom/alipay/android/app/pay/MspInitAssistServiceImpl;Lcom/alipay/android/app/n;)V

    return-object v0
.end method

.method public initWhenServiceCreate()V
    .locals 0

    return-void
.end method

.method public initWhenServiceFirstCreate(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public stopWhenServiceDestroy(Landroid/content/Context;)V
    .locals 0

    return-void
.end method
