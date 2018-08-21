.class Lcom/alipay/android/phone/inside/log/c;
.super Ljava/lang/Object;
.source "LogCollect.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/inside/log/b;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/inside/log/b;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/inside/log/c;->a:Lcom/alipay/android/phone/inside/log/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/inside/log/c;->a:Lcom/alipay/android/phone/inside/log/b;

    invoke-static {v0}, Lcom/alipay/android/phone/inside/log/b;->a(Lcom/alipay/android/phone/inside/log/b;)V

    return-void
.end method
