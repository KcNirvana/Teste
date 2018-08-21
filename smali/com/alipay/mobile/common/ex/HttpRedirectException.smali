.class public Lcom/alipay/mobile/common/ex/HttpRedirectException;
.super Lcom/alipay/mobile/common/ex/HttpException;
.source "HttpRedirectException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/ex/HttpException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/alipay/mobile/common/ex/HttpRedirectException;->setResult(Ljava/lang/String;)V

    return-void
.end method
