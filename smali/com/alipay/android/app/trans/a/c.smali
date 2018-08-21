.class Lcom/alipay/android/app/trans/a/c;
.super Landroid/os/Handler;
.source "PhoneCashierHttpClient.java"


# instance fields
.field final synthetic a:Lcom/alipay/android/app/trans/a/b;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/trans/a/b;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/trans/a/c;->a:Lcom/alipay/android/app/trans/a/b;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string/jumbo v0, "phonecashiermsp"

    const-string/jumbo v1, "PhoneCashierHttpClient.initThread"

    const-string/jumbo v2, "COUNT_TIME_OUT"

    invoke-static {v3, v0, v1, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    const-wide/16 v2, 0x4e20

    invoke-virtual {p0, v0, v2, v3}, Lcom/alipay/android/app/trans/a/c;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "phonecashiermsp"

    const-string/jumbo v1, "PhoneCashierHttpClient.initThread"

    const-string/jumbo v2, "TRIGGER_TIME_OUT"

    invoke-static {v3, v0, v1, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/trans/a/c;->a:Lcom/alipay/android/app/trans/a/b;

    invoke-static {v0}, Lcom/alipay/android/app/trans/a/b;->a(Lcom/alipay/android/app/trans/a/b;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/trans/a/c;->a:Lcom/alipay/android/app/trans/a/b;

    invoke-static {v0}, Lcom/alipay/android/app/trans/a/b;->a(Lcom/alipay/android/app/trans/a/b;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/trans/a/c;->a:Lcom/alipay/android/app/trans/a/b;

    invoke-static {v0}, Lcom/alipay/android/app/trans/a/b;->a(Lcom/alipay/android/app/trans/a/b;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
