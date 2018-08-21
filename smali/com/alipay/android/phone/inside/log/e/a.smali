.class public Lcom/alipay/android/phone/inside/log/e/a;
.super Ljava/lang/Object;
.source "ExceptionLoggerImpl.java"

# interfaces
.implements Lcom/alipay/android/phone/inside/log/api/ex/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/alipay/android/phone/inside/log/f/g;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/alipay/android/phone/inside/log/b;

    invoke-direct {v0}, Lcom/alipay/android/phone/inside/log/b;-><init>()V

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/inside/log/b;->a(Lcom/alipay/android/phone/inside/log/f/g;)V

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/log/b;->c()V

    goto :goto_0
.end method

.method private a(Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;)Z
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;->CRASH:Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p2, p3}, Lcom/alipay/android/phone/inside/log/e/a;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/alipay/android/phone/inside/log/f/g;

    invoke-direct {v0, p2, p3}, Lcom/alipay/android/phone/inside/log/f/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/alipay/android/phone/inside/log/e/a;->a(Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/inside/log/e/a;->a(Lcom/alipay/android/phone/inside/log/f/g;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/alipay/android/phone/inside/log/b;->a()Lcom/alipay/android/phone/inside/log/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/inside/log/b;->a(Lcom/alipay/android/phone/inside/log/f/g;)V

    goto :goto_0
.end method

.method public a(Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    invoke-direct {p0, p2, p3}, Lcom/alipay/android/phone/inside/log/e/a;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/alipay/android/phone/inside/log/f/g;

    invoke-direct {v0, p2, p3, p4}, Lcom/alipay/android/phone/inside/log/f/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, p1}, Lcom/alipay/android/phone/inside/log/e/a;->a(Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/inside/log/e/a;->a(Lcom/alipay/android/phone/inside/log/f/g;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/alipay/android/phone/inside/log/b;->a()Lcom/alipay/android/phone/inside/log/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/inside/log/b;->a(Lcom/alipay/android/phone/inside/log/f/g;)V

    goto :goto_0
.end method

.method public varargs a(Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p2, p3}, Lcom/alipay/android/phone/inside/log/e/a;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/alipay/android/phone/inside/log/f/g;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/alipay/android/phone/inside/log/f/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/alipay/android/phone/inside/log/e/a;->a(Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/inside/log/e/a;->a(Lcom/alipay/android/phone/inside/log/f/g;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/alipay/android/phone/inside/log/b;->a()Lcom/alipay/android/phone/inside/log/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/inside/log/b;->a(Lcom/alipay/android/phone/inside/log/f/g;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/alipay/android/phone/inside/log/e/a;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/alipay/android/phone/inside/log/b;->a()Lcom/alipay/android/phone/inside/log/b;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/inside/log/f/g;

    invoke-direct {v1, p1, p2}, Lcom/alipay/android/phone/inside/log/f/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/inside/log/b;->a(Lcom/alipay/android/phone/inside/log/f/g;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/alipay/android/phone/inside/log/e/a;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/alipay/android/phone/inside/log/b;->a()Lcom/alipay/android/phone/inside/log/b;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/inside/log/f/g;

    invoke-direct {v1, p1, p2, p3}, Lcom/alipay/android/phone/inside/log/f/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/inside/log/b;->a(Lcom/alipay/android/phone/inside/log/f/g;)V

    goto :goto_0
.end method

.method public varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/alipay/android/phone/inside/log/e/a;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/alipay/android/phone/inside/log/b;->a()Lcom/alipay/android/phone/inside/log/b;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/inside/log/f/g;

    invoke-direct {v1, p1, p2, p3}, Lcom/alipay/android/phone/inside/log/f/g;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/inside/log/b;->a(Lcom/alipay/android/phone/inside/log/f/g;)V

    goto :goto_0
.end method
