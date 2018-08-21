.class public Lcom/alipay/android/phone/inside/security/f;
.super Ljava/lang/Object;
.source "StaticDataStore.java"


# instance fields
.field private a:Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getStaticDataStoreComp()Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/inside/security/f;->a:Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/inside/security/f;->a:Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    const/16 v0, 0x8

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/inside/security/f;->a:Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;

    invoke-interface {v0, p1}, Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;->getAppKeyByIndex(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/alipay/android/phone/inside/security/a/a;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p1, Lcom/alipay/android/phone/inside/security/a/a;->a:I

    if-gez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/inside/security/f;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget v0, p1, Lcom/alipay/android/phone/inside/security/a/a;->a:I

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/inside/security/f;->a:Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/inside/security/f;->a:Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;

    invoke-interface {v0, p1}, Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;->getExtraData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
