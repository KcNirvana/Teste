.class Lcom/alipay/android/app/b/a/c;
.super Ljava/lang/Object;
.source "HandlerThreadObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/b/a/j;

.field final synthetic b:Lcom/alipay/android/app/b/a/b;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/b/a/b;Lcom/alipay/android/app/b/a/j;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/b/a/c;->b:Lcom/alipay/android/app/b/a/b;

    iput-object p2, p0, Lcom/alipay/android/app/b/a/c;->a:Lcom/alipay/android/app/b/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/alipay/android/app/b/a/h;->a()Lcom/alipay/android/app/b/a/h;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/b/a/c;->a:Lcom/alipay/android/app/b/a/j;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/b/a/h;->a(Lcom/alipay/android/app/b/a/j;)V

    return-void
.end method
