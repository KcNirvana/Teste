.class public Lcom/alipay/android/phone/mrpc/core/w;
.super Ljava/lang/Object;
.source "RpcInvocationHandler.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field protected a:Lcom/alipay/android/phone/mrpc/core/g;

.field protected b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected c:Lcom/alipay/android/phone/mrpc/core/y;

.field private d:Z

.field private e:Lcom/alipay/android/phone/mrpc/core/q;


# direct methods
.method public constructor <init>(Lcom/alipay/android/phone/mrpc/core/g;Ljava/lang/Class;Lcom/alipay/android/phone/mrpc/core/y;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/android/phone/mrpc/core/g;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alipay/android/phone/mrpc/core/y;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/w;->a:Lcom/alipay/android/phone/mrpc/core/g;

    iput-object p2, p0, Lcom/alipay/android/phone/mrpc/core/w;->b:Ljava/lang/Class;

    iput-object p3, p0, Lcom/alipay/android/phone/mrpc/core/w;->c:Lcom/alipay/android/phone/mrpc/core/y;

    return-void
.end method

.method private a(Ljava/lang/reflect/Method;)Lcom/alipay/android/phone/mrpc/core/q;
    .locals 2

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/w;->c()Lcom/alipay/android/phone/mrpc/core/q;

    move-result-object v0

    iget-object v1, v0, Lcom/alipay/android/phone/mrpc/core/q;->e:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/phone/mrpc/core/w;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/mrpc/core/q;->e:Ljava/lang/Boolean;

    :cond_0
    iget-object v1, v0, Lcom/alipay/android/phone/mrpc/core/q;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/w;->a:Lcom/alipay/android/phone/mrpc/core/g;

    invoke-interface {v1}, Lcom/alipay/android/phone/mrpc/core/g;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/mrpc/core/q;->d:Ljava/lang/String;

    :cond_1
    iget-object v1, v0, Lcom/alipay/android/phone/mrpc/core/q;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/w;->a:Lcom/alipay/android/phone/mrpc/core/g;

    invoke-interface {v1}, Lcom/alipay/android/phone/mrpc/core/g;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/mrpc/core/q;->b:Ljava/lang/String;

    :cond_2
    return-object v0
.end method

.method private c()Lcom/alipay/android/phone/mrpc/core/q;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/w;->e:Lcom/alipay/android/phone/mrpc/core/q;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/phone/mrpc/core/q;

    invoke-direct {v0}, Lcom/alipay/android/phone/mrpc/core/q;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/w;->e:Lcom/alipay/android/phone/mrpc/core/q;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/w;->e:Lcom/alipay/android/phone/mrpc/core/q;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/phone/mrpc/core/w;->d:Z

    return v0
.end method

.method public b()Lcom/alipay/android/phone/mrpc/core/x;
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/w;->c()Lcom/alipay/android/phone/mrpc/core/q;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/phone/mrpc/core/RpcException;
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/w;->c:Lcom/alipay/android/phone/mrpc/core/y;

    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/w;->b:Ljava/lang/Class;

    invoke-direct {p0, p2}, Lcom/alipay/android/phone/mrpc/core/w;->a(Ljava/lang/reflect/Method;)Lcom/alipay/android/phone/mrpc/core/q;

    move-result-object v5

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/phone/mrpc/core/y;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/alipay/android/phone/mrpc/core/q;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
