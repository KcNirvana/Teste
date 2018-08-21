.class public Lcom/alipay/android/phone/inside/security/a/c;
.super Ljava/lang/Object;
.source "UtilWX.java"


# instance fields
.field private a:Landroid/content/ContextWrapper;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/phone/inside/security/a/c;->a:Landroid/content/ContextWrapper;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/alipay/android/phone/inside/security/a/a;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/phone/inside/security/a/c;->a:Landroid/content/ContextWrapper;

    invoke-static {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataStoreComp()Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v1, p2, Lcom/alipay/android/phone/inside/security/a/a;->b:[B

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/String;

    iget-object v2, p2, Lcom/alipay/android/phone/inside/security/a/a;->b:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/alipay/android/phone/inside/security/a/c;->a:Landroid/content/ContextWrapper;

    invoke-static {v2}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object v2

    if-eqz v2, :cond_0

    const/16 v3, 0x10

    const-string/jumbo v4, ""

    invoke-interface {v2, v3, v1, p1, v4}, Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;->staticSafeEncrypt(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    iget v1, p2, Lcom/alipay/android/phone/inside/security/a/a;->a:I

    if-gez v1, :cond_2

    const/4 v1, 0x0

    :goto_2
    const-string/jumbo v3, ""

    invoke-interface {v2, v1, v3}, Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;->getAppKeyByIndex(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget v1, p2, Lcom/alipay/android/phone/inside/security/a/a;->a:I
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public b(Ljava/lang/String;Lcom/alipay/android/phone/inside/security/a/a;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/phone/inside/security/a/c;->a:Landroid/content/ContextWrapper;

    invoke-static {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataStoreComp()Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v1, p2, Lcom/alipay/android/phone/inside/security/a/a;->b:[B

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/String;

    iget-object v2, p2, Lcom/alipay/android/phone/inside/security/a/a;->b:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/alipay/android/phone/inside/security/a/c;->a:Landroid/content/ContextWrapper;

    invoke-static {v2}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object v2

    if-eqz v2, :cond_0

    const/16 v3, 0x10

    const-string/jumbo v4, ""

    invoke-interface {v2, v3, v1, p1, v4}, Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;->staticSafeDecrypt(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    iget v1, p2, Lcom/alipay/android/phone/inside/security/a/a;->a:I

    if-gez v1, :cond_2

    const/4 v1, 0x0

    :goto_2
    const-string/jumbo v3, ""

    invoke-interface {v2, v1, v3}, Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;->getAppKeyByIndex(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget v1, p2, Lcom/alipay/android/phone/inside/security/a/a;->a:I
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1
.end method
