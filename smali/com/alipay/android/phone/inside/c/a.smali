.class public Lcom/alipay/android/phone/inside/c/a;
.super Ljava/lang/Object;
.source "InsideBizAdapter.java"


# direct methods
.method public static a()V
    .locals 0

    invoke-static {}, Lcom/alipay/android/phone/inside/c/c/a;->a()V

    invoke-static {}, Lcom/alipay/android/phone/inside/c/a;->b()V

    return-void
.end method

.method private static b()V
    .locals 3

    invoke-static {}, Lcom/alipay/android/phone/inside/d/a;->a()Lcom/alipay/android/phone/inside/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/d/a;->b()Lcom/alipay/android/phone/inside/d/c;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/annotation/CheckLogin;

    new-instance v2, Lcom/alipay/android/phone/inside/c/b/c;

    invoke-direct {v2}, Lcom/alipay/android/phone/inside/c/b/c;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/inside/d/c;->a(Ljava/lang/Class;Lcom/alipay/android/phone/mrpc/core/v;)V

    const-class v1, Lcom/alipay/mobile/framework/service/annotation/OperationType;

    new-instance v2, Lcom/alipay/android/phone/inside/c/b/a;

    invoke-direct {v2}, Lcom/alipay/android/phone/inside/c/b/a;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/inside/d/c;->a(Ljava/lang/Class;Lcom/alipay/android/phone/mrpc/core/v;)V

    return-void
.end method
