.class public Lcom/alipay/security/mobile/api/AuthenticatorApi$FpServiceErrItem;
.super Ljava/lang/Object;
.source "AuthenticatorApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/security/mobile/api/AuthenticatorApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FpServiceErrItem"
.end annotation


# instance fields
.field public err:Ljava/lang/String;

.field public errLog:Ljava/lang/String;

.field public extend:Ljava/lang/String;

.field public func:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string/jumbo p1, ""

    :cond_0
    iput-object p1, p0, Lcom/alipay/security/mobile/api/AuthenticatorApi$FpServiceErrItem;->func:Ljava/lang/String;

    if-nez p2, :cond_1

    const-string/jumbo p2, ""

    :cond_1
    iput-object p2, p0, Lcom/alipay/security/mobile/api/AuthenticatorApi$FpServiceErrItem;->err:Ljava/lang/String;

    if-nez p3, :cond_2

    const-string/jumbo p3, ""

    :cond_2
    iput-object p3, p0, Lcom/alipay/security/mobile/api/AuthenticatorApi$FpServiceErrItem;->errLog:Ljava/lang/String;

    if-nez p4, :cond_3

    const-string/jumbo p4, ""

    :cond_3
    iput-object p4, p0, Lcom/alipay/security/mobile/api/AuthenticatorApi$FpServiceErrItem;->extend:Ljava/lang/String;

    return-void
.end method
