.class public Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Update;
.super Ljava/lang/Object;
.source "Update.java"


# instance fields
.field public downloadurl:Ljava/lang/String;

.field public sec_downloadurl:Ljava/lang/String;

.field public ta_md5:Ljava/lang/String;

.field public ta_version:Ljava/lang/String;

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Update;->downloadurl:Ljava/lang/String;

    return-object v0
.end method

.method public getTa_downloadurl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Update;->sec_downloadurl:Ljava/lang/String;

    return-object v0
.end method

.method public getTa_md5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Update;->ta_md5:Ljava/lang/String;

    return-object v0
.end method

.method public getTa_version()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Update;->ta_version:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Update;->version:I

    return v0
.end method

.method public setDownloadurl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Update;->downloadurl:Ljava/lang/String;

    return-void
.end method

.method public setTa_downloadurl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Update;->sec_downloadurl:Ljava/lang/String;

    return-void
.end method

.method public setTa_md5(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Update;->ta_md5:Ljava/lang/String;

    return-void
.end method

.method public setTa_version(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Update;->ta_version:Ljava/lang/String;

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Update;->version:I

    return-void
.end method
