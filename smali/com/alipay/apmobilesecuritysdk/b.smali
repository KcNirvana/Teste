.class Lcom/alipay/apmobilesecuritysdk/b;
.super Ljava/lang/Object;
.source "DeviceFingerprintServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/b;->b:Lcom/alipay/apmobilesecuritysdk/DeviceFingerprintServiceImpl;

    iput-object p2, p0, Lcom/alipay/apmobilesecuritysdk/b;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/edge/face/EdgeRiskAnalyzer;->getInstance(Landroid/content/Context;)Lcom/alipay/edge/face/EdgeRiskAnalyzer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/edge/face/EdgeRiskAnalyzer;->initialize()V

    return-void
.end method
