.class public Lcom/xiaomi/phonenum/phone/KKPhoneInfo;
.super Lcom/xiaomi/phonenum/phone/PhoneInfo;
.source "KKPhoneInfo.java"


# instance fields
.field private final DAFULT_SUBID:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/phonenum/phone/PhoneInfo;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/xiaomi/phonenum/phone/KKPhoneInfo;->DAFULT_SUBID:I

    return-void
.end method


# virtual methods
.method public getDataEnabledForSubId(I)Z
    .locals 1

    iget-object p1, p0, Lcom/xiaomi/phonenum/phone/KKPhoneInfo;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected getIccid(I)Ljava/lang/String;
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    iget-object p1, p0, Lcom/xiaomi/phonenum/phone/KKPhoneInfo;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getImsi(I)Ljava/lang/String;
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    iget-object p1, p0, Lcom/xiaomi/phonenum/phone/KKPhoneInfo;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getLine1Number(I)Ljava/lang/String;
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    iget-object p1, p0, Lcom/xiaomi/phonenum/phone/KKPhoneInfo;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getMccMnc(I)Ljava/lang/String;
    .locals 0

    iget-object p1, p0, Lcom/xiaomi/phonenum/phone/KKPhoneInfo;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNetworkMccMncForSubId(I)Ljava/lang/String;
    .locals 0

    iget-object p1, p0, Lcom/xiaomi/phonenum/phone/KKPhoneInfo;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPhoneCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getPhoneTypeForSubId(I)I
    .locals 0

    iget-object p1, p0, Lcom/xiaomi/phonenum/phone/KKPhoneInfo;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p1

    return p1
.end method

.method public getSubIdForSlotId(I)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public isNetworkRoamingForSubId(I)Z
    .locals 0

    iget-object p1, p0, Lcom/xiaomi/phonenum/phone/KKPhoneInfo;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result p1

    return p1
.end method

.method public waitForServiceForSubId(IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
