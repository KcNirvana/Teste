.class public Lcom/alipay/android/app/g/b;
.super Ljava/lang/Object;
.source "ExceptionUtils.java"


# static fields
.field private static a:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v0, Lcom/alipay/android/app/g/b;->a:Ljava/lang/StringBuffer;

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/alipay/android/app/g/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/alipay/android/app/plugin/a/a;->a()Lcom/alipay/android/app/plugin/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/android/app/plugin/b;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "mini_app_error"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "(CA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "%03d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a()V
    .locals 2

    sget-object v0, Lcom/alipay/android/app/g/b;->a:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    return-void
.end method

.method public static a(ILjava/lang/Throwable;)V
    .locals 3

    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_3

    const-string/jumbo v0, "ne"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/alipay/android/app/statistic/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/alipay/android/app/exception/NetErrorException;

    invoke-direct {v0, p1}, Lcom/alipay/android/app/exception/NetErrorException;-><init>(Ljava/lang/Throwable;)V

    instance-of v1, p1, Lorg/apache/http/conn/ConnectTimeoutException;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ne"

    const-string/jumbo v2, "connect_timeout_exception"

    invoke-static {v1, v2, p1}, Lcom/alipay/android/app/statistic/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/exception/NetErrorException;->setErrorCode(I)V

    :goto_0
    move-object p1, v0

    :goto_1
    new-instance v0, Lcom/alipay/android/app/b/a/j;

    invoke-direct {v0}, Lcom/alipay/android/app/b/a/j;-><init>()V

    iput p0, v0, Lcom/alipay/android/app/b/a/j;->a:I

    invoke-static {}, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->getInstance()Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->hasWindowManager(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x10

    iput v1, v0, Lcom/alipay/android/app/b/a/j;->b:I

    :goto_2
    const/16 v1, 0x3f6

    iput v1, v0, Lcom/alipay/android/app/b/a/j;->c:I

    iput-object p1, v0, Lcom/alipay/android/app/b/a/j;->d:Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/android/app/b/a/h;->a()Lcom/alipay/android/app/b/a/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/b/a/h;->b(Lcom/alipay/android/app/b/a/j;)V

    return-void

    :cond_0
    instance-of v1, p1, Ljava/net/SocketTimeoutException;

    if-eqz v1, :cond_1

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/exception/NetErrorException;->setErrorCode(I)V

    goto :goto_0

    :cond_1
    instance-of v1, p1, Ljava/net/SocketException;

    if-eqz v1, :cond_2

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/exception/NetErrorException;->setErrorCode(I)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/exception/NetErrorException;->setErrorCode(I)V

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/alipay/android/app/exception/NetErrorException;

    if-nez v0, :cond_5

    instance-of v0, p1, Lcom/alipay/android/app/exception/AppErrorException;

    if-nez v0, :cond_5

    const-string/jumbo v0, "ex"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/alipay/android/app/statistic/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/alipay/android/app/b/e/b;->a()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "mini_app_error"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    instance-of v1, p1, Lcom/alipay/android/app/json/JSONException;

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/alipay/android/app/g/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :cond_4
    new-instance v1, Lcom/alipay/android/app/exception/AppErrorException;

    invoke-direct {v1, v0, p1}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v1

    goto :goto_1

    :cond_5
    const-string/jumbo v0, "ex"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/alipay/android/app/statistic/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_6
    const/16 v1, 0xa

    iput v1, v0, Lcom/alipay/android/app/b/a/j;->b:I

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/alipay/android/app/g/b;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/alipay/android/app/g/b;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/app/g/b;->a:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    return-object v0
.end method
