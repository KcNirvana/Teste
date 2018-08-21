.class public Lcom/alipay/android/app/source/SourceEntrance;
.super Ljava/lang/Object;
.source "SourceEntrance.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 3

    invoke-static {}, Lcom/alipay/android/app/b/a/h;->a()Lcom/alipay/android/app/b/a/h;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/source/b;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Lcom/alipay/android/app/source/b;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/b/a/h;->a(Lcom/alipay/android/app/b/a/e;)V

    return-void
.end method
