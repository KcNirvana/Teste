.class public Lcom/alipay/android/phone/inside/security/d;
.super Ljava/lang/Object;
.source "SecBody.java"


# instance fields
.field private a:Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;

.field private b:Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getSecurityBodyComp()Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/phone/inside/security/d;->a:Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;

    invoke-virtual {v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getStaticDataStoreComp()Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/inside/security/d;->b:Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/phone/inside/security/d;->a:Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {}, Lcom/alipay/android/phone/inside/security/a;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/inside/security/d;->b:Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;->getAppKeyByIndex(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/alipay/android/phone/inside/security/d;->a:Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;

    invoke-interface {v1, p1, v0}, Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;->getSecurityBodyData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
