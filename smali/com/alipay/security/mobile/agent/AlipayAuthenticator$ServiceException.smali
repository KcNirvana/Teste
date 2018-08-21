.class public Lcom/alipay/security/mobile/agent/AlipayAuthenticator$ServiceException;
.super Ljava/lang/Exception;
.source "AlipayAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/security/mobile/agent/AlipayAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/alipay/security/mobile/agent/AlipayAuthenticator$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$ServiceException;-><init>(Ljava/lang/String;)V

    return-void
.end method
