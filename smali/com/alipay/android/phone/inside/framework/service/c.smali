.class public Lcom/alipay/android/phone/inside/framework/service/c;
.super Ljava/lang/Object;
.source "ServiceExecutor.java"


# static fields
.field private static final a:Lcom/alipay/android/phone/inside/framework/service/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alipay/android/phone/inside/framework/service/e;

    invoke-direct {v0}, Lcom/alipay/android/phone/inside/framework/service/e;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/inside/framework/service/c;->a:Lcom/alipay/android/phone/inside/framework/service/e;

    return-void
.end method

.method static synthetic a()Lcom/alipay/android/phone/inside/framework/service/e;
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/inside/framework/service/c;->a:Lcom/alipay/android/phone/inside/framework/service/e;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Params:",
            "Ljava/lang/Object;",
            "Result:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TParams;)TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/alipay/android/phone/inside/framework/service/c;->a:Lcom/alipay/android/phone/inside/framework/service/e;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/android/phone/inside/framework/service/e;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;Lcom/alipay/android/phone/inside/framework/service/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Params:",
            "Ljava/lang/Object;",
            "Result:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TParams;",
            "Lcom/alipay/android/phone/inside/framework/service/b",
            "<TResult;>;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/android/phone/inside/framework/service/d;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/android/phone/inside/framework/service/d;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/alipay/android/phone/inside/framework/service/b;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
