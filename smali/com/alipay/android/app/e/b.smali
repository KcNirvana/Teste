.class Lcom/alipay/android/app/e/b;
.super Ljava/lang/Object;
.source "AlipayLoginHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/e/a;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/e/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/e/b;->a:Lcom/alipay/android/app/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/e/b;->a:Lcom/alipay/android/app/e/a;

    invoke-static {}, Lcom/alipay/android/app/c/b;->c()Lcom/alipay/android/app/c/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/android/app/c/a;->a()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/e/a;->a(Lcom/alipay/android/app/e/a;Z)Z

    iget-object v0, p0, Lcom/alipay/android/app/e/b;->a:Lcom/alipay/android/app/e/a;

    invoke-static {v0}, Lcom/alipay/android/app/e/a;->a(Lcom/alipay/android/app/e/a;)V

    return-void
.end method
