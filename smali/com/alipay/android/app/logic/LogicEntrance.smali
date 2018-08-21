.class public Lcom/alipay/android/app/logic/LogicEntrance;
.super Ljava/lang/Object;
.source "LogicEntrance.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 4

    new-instance v0, Lcom/alipay/android/app/logic/a;

    invoke-direct {v0}, Lcom/alipay/android/app/logic/a;-><init>()V

    new-instance v1, Lcom/alipay/android/app/b/a/g;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/b/a/g;-><init>(Lcom/alipay/android/app/b/a/d;)V

    invoke-static {}, Lcom/alipay/android/app/b/a/h;->a()Lcom/alipay/android/app/b/a/h;

    move-result-object v0

    new-instance v2, Lcom/alipay/android/app/b/a/a;

    const/16 v3, 0xb

    invoke-direct {v2, v3, v1}, Lcom/alipay/android/app/b/a/a;-><init>(ILcom/alipay/android/app/b/a/g;)V

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/b/a/h;->a(Lcom/alipay/android/app/b/a/e;)V

    new-instance v2, Lcom/alipay/android/app/b/a/a;

    const/16 v3, 0xd

    invoke-direct {v2, v3, v1}, Lcom/alipay/android/app/b/a/a;-><init>(ILcom/alipay/android/app/b/a/g;)V

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/b/a/h;->a(Lcom/alipay/android/app/b/a/e;)V

    return-void
.end method
