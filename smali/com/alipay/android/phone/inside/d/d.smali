.class public Lcom/alipay/android/phone/inside/d/d;
.super Lcom/alipay/android/phone/inside/d/c;
.source "RpcServiceImpl.java"


# instance fields
.field protected a:Lcom/alipay/android/phone/mrpc/core/u;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/alipay/android/phone/inside/d/c;-><init>()V

    new-instance v0, Lcom/alipay/android/phone/mrpc/core/u;

    new-instance v1, Lcom/alipay/android/phone/inside/d/b;

    invoke-direct {v1}, Lcom/alipay/android/phone/inside/d/b;-><init>()V

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/mrpc/core/u;-><init>(Lcom/alipay/android/phone/mrpc/core/g;)V

    iput-object v0, p0, Lcom/alipay/android/phone/inside/d/d;->a:Lcom/alipay/android/phone/mrpc/core/u;

    iget-object v0, p0, Lcom/alipay/android/phone/inside/d/d;->a:Lcom/alipay/android/phone/mrpc/core/u;

    invoke-static {}, Lcom/alipay/android/phone/inside/framework/LauncherApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mrpc/core/u;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/alipay/android/phone/inside/framework/LauncherApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/mrpc/core/k;->a(Landroid/content/Context;)Lcom/alipay/android/phone/mrpc/core/k;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lcom/alipay/android/phone/mrpc/core/x;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/inside/d/d;->a:Lcom/alipay/android/phone/mrpc/core/u;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/mrpc/core/u;->a(Ljava/lang/Object;)Lcom/alipay/android/phone/mrpc/core/x;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/phone/inside/d/d;->a:Lcom/alipay/android/phone/mrpc/core/u;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/mrpc/core/u;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Class;Lcom/alipay/android/phone/mrpc/core/v;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/alipay/android/phone/mrpc/core/v;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/phone/inside/d/d;->a:Lcom/alipay/android/phone/mrpc/core/u;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/phone/mrpc/core/u;->a(Ljava/lang/Class;Lcom/alipay/android/phone/mrpc/core/v;)V

    return-void
.end method
