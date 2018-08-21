.class public Lcom/alipay/android/app/LiveConnectReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LiveConnectReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/LiveConnectReceiver$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/alipay/android/app/LiveConnectReceiver;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/LiveConnectReceiver;->preLoad()V

    return-void
.end method

.method private doMspPreLoad()V
    .locals 2

    new-instance v0, Lcom/alipay/android/app/LiveConnectReceiver$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/android/app/LiveConnectReceiver$a;-><init>(Lcom/alipay/android/app/LiveConnectReceiver;Lcom/alipay/android/app/o;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/LiveConnectReceiver$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private doSetDnsIP(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/alipay/android/app/b/a/j;

    invoke-direct {v0}, Lcom/alipay/android/app/b/a/j;-><init>()V

    const/16 v1, 0xc

    iput v1, v0, Lcom/alipay/android/app/b/a/j;->b:I

    const/16 v1, 0x403

    iput v1, v0, Lcom/alipay/android/app/b/a/j;->c:I

    iput-object p1, v0, Lcom/alipay/android/app/b/a/j;->d:Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/android/app/b/a/h;->a()Lcom/alipay/android/app/b/a/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/b/a/h;->b(Lcom/alipay/android/app/b/a/j;)V

    return-void
.end method

.method private preLoad()V
    .locals 2

    invoke-static {}, Lcom/alipay/android/app/plugin/a/a;->a()Lcom/alipay/android/app/plugin/b;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/plugin/a/a;->a()Lcom/alipay/android/app/plugin/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/android/app/plugin/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/android/app/plugin/b;->loadProperties(Landroid/content/Context;)V

    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/b;->c()Lcom/alipay/android/app/k;

    invoke-static {}, Lcom/alipay/android/app/b/a/h;->a()Lcom/alipay/android/app/b/a/h;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x1

    if-nez p2, :cond_1

    const-string/jumbo v0, "phonecashiermsp"

    const-string/jumbo v1, "LiveConnectReceiver.onReceive"

    const-string/jumbo v2, "\u4f20\u5165LiveConnectReceiver\u7684intent\u4e3a\u7a7a\uff0c\u9000\u51fa"

    invoke-static {v5, v0, v1, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.taobao.taobao"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "com.taobao.mobile.dipei"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/helper/a;->k()Lcom/alipay/android/app/helper/a;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/alipay/android/app/sys/b;->a(Landroid/content/Context;Lcom/alipay/android/app/k;)V

    const-string/jumbo v0, "dns_ip"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "phonecashiermsp"

    const-string/jumbo v2, "LiveConnectReceiver.onReceive"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u5e7f\u64ad\u9884\u8fde\u63a5\u4f20\u5165ip\u5730\u5740\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0, v0}, Lcom/alipay/android/app/LiveConnectReceiver;->doSetDnsIP(Ljava/lang/String;)V

    :cond_3
    const-string/jumbo v0, "msp_pre_load"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/android/app/LiveConnectReceiver;->doMspPreLoad()V

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "phonecashiermsp"

    const-string/jumbo v2, "LiveConnectReceiver.onReceive"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u8c03\u8d77LiveConnectReceiver\u7684packageName["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "]\u4e0d\u6b63\u786e(\u5f53\u524d\u53ea\u652f\u6301\u624b\u6dd8)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v1, v2, v0}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
