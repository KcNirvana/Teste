.class Lcom/alipay/android/app/trans/a/f;
.super Ljava/lang/Object;
.source "PhoneCashierHttpClient.java"

# interfaces
.implements Lorg/apache/http/conn/ConnectionKeepAliveStrategy;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/trans/a/d;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/trans/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/trans/a/f;->a:Lcom/alipay/android/app/trans/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeepAliveDuration(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)J
    .locals 2

    const-wide/32 v0, 0x15f90

    return-wide v0
.end method
