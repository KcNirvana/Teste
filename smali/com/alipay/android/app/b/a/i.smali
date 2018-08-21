.class Lcom/alipay/android/app/b/a/i;
.super Ljava/lang/Object;
.source "MsgSubject.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/b/a/j;

.field final synthetic b:Lcom/alipay/android/app/b/a/h;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/b/a/h;Lcom/alipay/android/app/b/a/j;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/b/a/i;->b:Lcom/alipay/android/app/b/a/h;

    iput-object p2, p0, Lcom/alipay/android/app/b/a/i;->a:Lcom/alipay/android/app/b/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/b/a/i;->b:Lcom/alipay/android/app/b/a/h;

    iget-object v1, p0, Lcom/alipay/android/app/b/a/i;->a:Lcom/alipay/android/app/b/a/j;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/b/a/h;->a(Lcom/alipay/android/app/b/a/j;)V

    return-void
.end method
