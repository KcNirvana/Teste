.class Lcom/ali/user/mobile/external/LoginExternalPlugin$1;
.super Ljava/lang/Object;
.source "LoginExternalPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/external/LoginExternalPlugin;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/external/LoginExternalPlugin;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/external/LoginExternalPlugin$1;->this$0:Lcom/ali/user/mobile/external/LoginExternalPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/inside/framework/LauncherApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/edge/face/EdgeRiskAnalyzer;->getInstance(Landroid/content/Context;)Lcom/alipay/edge/face/EdgeRiskAnalyzer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/edge/face/EdgeRiskAnalyzer;->initialize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "LoginExternalPlugin"

    const-string/jumbo v2, "init edge error"

    invoke-static {v1, v2, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
