.class Lcom/alipay/apmobilesecuritysdk/b/c;
.super Ljava/lang/Object;
.source "LogUploadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alipay/apmobilesecuritysdk/b/b;


# direct methods
.method constructor <init>(Lcom/alipay/apmobilesecuritysdk/b/b;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/b/c;->b:Lcom/alipay/apmobilesecuritysdk/b/b;

    iput-object p2, p0, Lcom/alipay/apmobilesecuritysdk/b/c;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/b/c;->b:Lcom/alipay/apmobilesecuritysdk/b/b;

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/b/c;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/alipay/apmobilesecuritysdk/b/b;->a(Lcom/alipay/apmobilesecuritysdk/b/b;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/b/d;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
