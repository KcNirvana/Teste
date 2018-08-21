.class Lcom/alipay/android/app/q;
.super Ljava/lang/Object;
.source "MspService.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/MspService;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/MspService;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/q;->a:Lcom/alipay/android/app/MspService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {p2}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/alipay/android/app/q;->a:Lcom/alipay/android/app/MspService;

    invoke-static {v0}, Lcom/alipay/android/app/MspService;->access$000(Lcom/alipay/android/app/MspService;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/q;->a:Lcom/alipay/android/app/MspService;

    invoke-virtual {v0}, Lcom/alipay/android/app/MspService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/sys/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/q;->a:Lcom/alipay/android/app/MspService;

    invoke-virtual {v0}, Lcom/alipay/android/app/MspService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/sys/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/q;->a:Lcom/alipay/android/app/MspService;

    invoke-static {v0}, Lcom/alipay/android/app/MspService;->access$000(Lcom/alipay/android/app/MspService;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
