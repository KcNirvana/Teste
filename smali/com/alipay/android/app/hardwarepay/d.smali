.class Lcom/alipay/android/app/hardwarepay/d;
.super Ljava/lang/Object;
.source "HardwarePayUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alipay/android/app/json/JSONObject;

.field final synthetic c:Z

.field final synthetic d:Lcom/alipay/android/app/hardwarepay/c;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/c;Landroid/content/Context;Lcom/alipay/android/app/json/JSONObject;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/d;->d:Lcom/alipay/android/app/hardwarepay/c;

    iput-object p2, p0, Lcom/alipay/android/app/hardwarepay/d;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/alipay/android/app/hardwarepay/d;->b:Lcom/alipay/android/app/json/JSONObject;

    iput-boolean p4, p0, Lcom/alipay/android/app/hardwarepay/d;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/d;->d:Lcom/alipay/android/app/hardwarepay/c;

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/d;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/d;->b:Lcom/alipay/android/app/json/JSONObject;

    iget-boolean v3, p0, Lcom/alipay/android/app/hardwarepay/d;->c:Z

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/hardwarepay/c;->a(Lcom/alipay/android/app/hardwarepay/c;Landroid/content/Context;Lcom/alipay/android/app/json/JSONObject;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "fp"

    const-string/jumbo v2, "HardwarePayUtilInitEx"

    invoke-static {v1, v2, v0}, Lcom/alipay/android/app/statistic/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
