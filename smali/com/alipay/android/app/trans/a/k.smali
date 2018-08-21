.class public Lcom/alipay/android/app/trans/a/k;
.super Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
.source "ZThreadSafeClientConnManager.java"


# direct methods
.method public constructor <init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    return-void
.end method


# virtual methods
.method protected createConnectionOperator(Lorg/apache/http/conn/scheme/SchemeRegistry;)Lorg/apache/http/conn/ClientConnectionOperator;
    .locals 1

    new-instance v0, Lcom/alipay/android/app/trans/a/i;

    invoke-direct {v0, p1}, Lcom/alipay/android/app/trans/a/i;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    return-object v0
.end method
