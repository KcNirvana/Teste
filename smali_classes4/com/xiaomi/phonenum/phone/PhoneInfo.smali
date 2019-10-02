.class public abstract Lcom/xiaomi/phonenum/phone/PhoneInfo;
.super Ljava/lang/Object;
.source "PhoneInfo.java"

# interfaces
.implements Lcom/xiaomi/phonenum/phone/PhoneUtil;


# instance fields
.field private mCm:Landroid/net/ConnectivityManager;

.field protected mContext:Landroid/content/Context;

.field protected mTm:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/phonenum/phone/PhoneInfo;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/xiaomi/phonenum/phone/PhoneInfo;->mTm:Landroid/telephony/TelephonyManager;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/xiaomi/phonenum/phone/PhoneInfo;->mCm:Landroid/net/ConnectivityManager;

    return-void
.end method


# virtual methods
.method public checkPermission(Ljava/lang/String;)Z
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/xiaomi/phonenum/phone/PhoneInfo;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract getDataEnabledForSubId(I)Z
.end method

.method protected abstract getIccid(I)Ljava/lang/String;
.end method

.method public getImei()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/phonenum/phone/PhoneInfo;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getImsi(I)Ljava/lang/String;
.end method

.method protected abstract getLine1Number(I)Ljava/lang/String;
.end method

.method protected abstract getMccMnc(I)Ljava/lang/String;
.end method

.method public abstract getNetworkMccMncForSubId(I)Ljava/lang/String;
.end method

.method public abstract getPhoneCount()I
.end method

.method public abstract getPhoneTypeForSubId(I)I
.end method

.method public getSimForSubId(I)Lcom/xiaomi/phonenum/bean/Sim;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/xiaomi/phonenum/phone/PhoneInfo;->getIccid(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/xiaomi/phonenum/phone/PhoneInfo;->getImsi(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/xiaomi/phonenum/phone/PhoneInfo;->getMccMnc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/xiaomi/phonenum/phone/PhoneInfo;->getLine1Number(I)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/xiaomi/phonenum/bean/Sim;

    invoke-direct {v3, v0, v1, v2, p1}, Lcom/xiaomi/phonenum/bean/Sim;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract getSubIdForSlotId(I)I
.end method

.method public isNetWorkTypeMobile()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/phonenum/phone/PhoneInfo;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract isNetworkRoamingForSubId(I)Z
.end method

.method public isSimStateReadyForSubId(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/phonenum/phone/PhoneInfo;->getSimForSubId(I)Lcom/xiaomi/phonenum/bean/Sim;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract waitForServiceForSubId(IJ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method
