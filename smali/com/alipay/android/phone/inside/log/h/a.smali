.class public Lcom/alipay/android/phone/inside/log/h/a;
.super Ljava/lang/Object;
.source "PerfLoggerImpl.java"

# interfaces
.implements Lcom/alipay/android/phone/inside/log/api/b/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 2

    invoke-static {}, Lcom/alipay/android/phone/inside/log/b;->a()Lcom/alipay/android/phone/inside/log/b;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/inside/log/f/i;

    invoke-direct {v1, p1, p2, p3}, Lcom/alipay/android/phone/inside/log/f/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/inside/log/b;->a(Lcom/alipay/android/phone/inside/log/f/i;)V

    return-void
.end method

.method public varargs a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;[Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/alipay/android/phone/inside/log/b;->a()Lcom/alipay/android/phone/inside/log/b;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/inside/log/f/i;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/alipay/android/phone/inside/log/f/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/inside/log/b;->a(Lcom/alipay/android/phone/inside/log/f/i;)V

    return-void
.end method
