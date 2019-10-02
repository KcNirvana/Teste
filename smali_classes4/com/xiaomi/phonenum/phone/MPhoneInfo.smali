.class public Lcom/xiaomi/phonenum/phone/MPhoneInfo;
.super Lcom/xiaomi/phonenum/phone/PhoneInfo;
.source "MPhoneInfo.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    api = 0x17
.end annotation


# instance fields
.field private mSm:Landroid/telephony/SubscriptionManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/phonenum/phone/PhoneInfo;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/phonenum/phone/MPhoneInfo;->mSm:Landroid/telephony/SubscriptionManager;

    return-void
.end method

.method private reflectTMCallForSub(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/phonenum/phone/MPhoneInfo;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v0, p0, Lcom/xiaomi/phonenum/phone/MPhoneInfo;->mTm:Landroid/telephony/TelephonyManager;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v4

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getDataEnabledForSubId(I)Z
    .locals 1

    const-string v0, "getDataEnabled"

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/phonenum/phone/MPhoneInfo;->reflectTMCallForSub(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public getIccid(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/phonenum/phone/MPhoneInfo;->mSm:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getImsi(I)Ljava/lang/String;
    .locals 1

    const-string v0, "getSubscriberId"

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/phonenum/phone/MPhoneInfo;->reflectTMCallForSub(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method protected getLine1Number(I)Ljava/lang/String;
    .locals 1

    const-string v0, "getLine1NumberForSubscriber"

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/phonenum/phone/MPhoneInfo;->reflectTMCallForSub(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method protected getMccMnc(I)Ljava/lang/String;
    .locals 1

    const-string v0, "getSimOperator"

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/phonenum/phone/MPhoneInfo;->reflectTMCallForSub(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getNetworkMccMncForSubId(I)Ljava/lang/String;
    .locals 1

    const-string v0, "getNetworkOperatorForSubscription"

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/phonenum/phone/MPhoneInfo;->reflectTMCallForSub(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getPhoneCount()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/phonenum/phone/MPhoneInfo;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    return v0
.end method

.method public getPhoneTypeForSubId(I)I
    .locals 1

    const-string v0, "getCurrentPhoneType"

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/phonenum/phone/MPhoneInfo;->reflectTMCallForSub(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getSubIdForSlotId(I)I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/phonenum/phone/MPhoneInfo;->mSm:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public isNetworkRoamingForSubId(I)Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/phonenum/phone/MPhoneInfo;->mSm:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->isNetworkRoaming(I)Z

    move-result p1

    return p1
.end method

.method public waitForServiceForSubId(IJ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/phonenum/phone/MPhoneInfo;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/xiaomi/phonenum/phone/PhoneInServiceHelper;->waitForService(Landroid/content/Context;IJ)Z

    move-result p1

    return p1
.end method
