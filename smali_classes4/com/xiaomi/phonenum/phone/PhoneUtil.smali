.class public interface abstract Lcom/xiaomi/phonenum/phone/PhoneUtil;
.super Ljava/lang/Object;
.source "PhoneUtil.java"


# virtual methods
.method public abstract checkPermission(Ljava/lang/String;)Z
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getDataEnabledForSubId(I)Z
.end method

.method public abstract getImei()Ljava/lang/String;
.end method

.method public abstract getNetworkMccMncForSubId(I)Ljava/lang/String;
.end method

.method public abstract getPhoneCount()I
.end method

.method public abstract getPhoneTypeForSubId(I)I
.end method

.method public abstract getSimForSubId(I)Lcom/xiaomi/phonenum/bean/Sim;
.end method

.method public abstract getSubIdForSlotId(I)I
.end method

.method public abstract isNetWorkTypeMobile()Z
.end method

.method public abstract isNetworkRoamingForSubId(I)Z
.end method

.method public abstract isSimStateReadyForSubId(I)Z
.end method

.method public abstract waitForServiceForSubId(IJ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method
