.class public Lcom/alipay/security/mobile/auth/AuthInfo;
.super Ljava/lang/Object;
.source "AuthInfo.java"


# instance fields
.field protected downloadUrl:Ljava/lang/String;

.field protected phoneModle:Ljava/lang/String;

.field protected protocolType:I

.field protected protocolVersion:I

.field protected type:I

.field protected vendor:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/alipay/security/mobile/auth/AuthInfo;->type:I

    iput p2, p0, Lcom/alipay/security/mobile/auth/AuthInfo;->vendor:I

    iput p3, p0, Lcom/alipay/security/mobile/auth/AuthInfo;->protocolType:I

    iput p4, p0, Lcom/alipay/security/mobile/auth/AuthInfo;->protocolVersion:I

    iput-object p5, p0, Lcom/alipay/security/mobile/auth/AuthInfo;->phoneModle:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/alipay/security/mobile/auth/AuthInfo;->type:I

    iput p2, p0, Lcom/alipay/security/mobile/auth/AuthInfo;->vendor:I

    iput p3, p0, Lcom/alipay/security/mobile/auth/AuthInfo;->protocolType:I

    iput p4, p0, Lcom/alipay/security/mobile/auth/AuthInfo;->protocolVersion:I

    iput-object p5, p0, Lcom/alipay/security/mobile/auth/AuthInfo;->phoneModle:Ljava/lang/String;

    iput-object p6, p0, Lcom/alipay/security/mobile/auth/AuthInfo;->downloadUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/security/mobile/auth/AuthInfo;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneModle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/security/mobile/auth/AuthInfo;->phoneModle:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolType()I
    .locals 1

    iget v0, p0, Lcom/alipay/security/mobile/auth/AuthInfo;->protocolType:I

    return v0
.end method

.method public getProtocolVersion()I
    .locals 1

    iget v0, p0, Lcom/alipay/security/mobile/auth/AuthInfo;->protocolVersion:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/alipay/security/mobile/auth/AuthInfo;->type:I

    return v0
.end method

.method public getVendor()I
    .locals 1

    iget v0, p0, Lcom/alipay/security/mobile/auth/AuthInfo;->vendor:I

    return v0
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/security/mobile/auth/AuthInfo;->downloadUrl:Ljava/lang/String;

    return-void
.end method

.method public setPhoneModle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/security/mobile/auth/AuthInfo;->phoneModle:Ljava/lang/String;

    return-void
.end method

.method public setProtocolType(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/security/mobile/auth/AuthInfo;->protocolType:I

    return-void
.end method

.method public setProtocolVersion(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/security/mobile/auth/AuthInfo;->protocolVersion:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/security/mobile/auth/AuthInfo;->type:I

    return-void
.end method

.method public setVendor(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/security/mobile/auth/AuthInfo;->vendor:I

    return-void
.end method
