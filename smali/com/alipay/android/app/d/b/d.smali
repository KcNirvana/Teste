.class final Lcom/alipay/android/app/d/b/d;
.super Ljava/lang/Object;
.source "GlobalExcutorUtil.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/app/d/b/c$a;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/d/b/c$a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/d/b/d;->a:Lcom/alipay/android/app/d/b/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/app/d/b/d;->a:Lcom/alipay/android/app/d/b/c$a;

    invoke-interface {v0}, Lcom/alipay/android/app/d/b/c$a;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
