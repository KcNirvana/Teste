.class public interface abstract Lcom/xiaomi/accountsdk/request/IPUtilExternal;
.super Ljava/lang/Object;
.source "IPUtilExternal.java"


# virtual methods
.method public abstract getNetworkName()Ljava/lang/String;
.end method

.method public abstract isWifi()Z
.end method

.method public abstract loadBackupIpList(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract loadBackupIpListExpireDuration(J)J
.end method

.method public abstract loadBackupTimeStamp(Ljava/lang/String;Ljava/lang/String;J)J
.end method

.method public abstract loadCachedIp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract loadCachedIpExpireDuration(J)J
.end method

.method public abstract loadCachedTimeStamp(Ljava/lang/String;Ljava/lang/String;J)J
.end method

.method public abstract loadPingThreshold(J)J
.end method

.method public abstract loadPingTimeCoefficient(J)J
.end method

.method public abstract saveBackupIpList(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract saveBackupIpListExpireDuration(J)V
.end method

.method public abstract saveBackupTimeStamp(Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method public abstract saveCachedIp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract saveCachedIpExpireDuration(J)V
.end method

.method public abstract saveCachedTimeStamp(Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method public abstract savePingThreshold(J)V
.end method

.method public abstract savePingTimeCoefficient(J)V
.end method
