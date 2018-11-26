.class public interface abstract Lcom/miui/networkassistant/service/ITrafficManageBinder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract applyCorrectedPkgsAndUsageValues(Lcom/miui/networkassistant/model/TrafficUsedStatus;ZI)V
.end method

.method public abstract forceCheckDailyLimitStatus(I)V
.end method

.method public abstract forceCheckLockScreenStatus(I)V
.end method

.method public abstract forceCheckRoamingDailyLimitStatus(I)V
.end method

.method public abstract forceCheckTethingSettingStatus()V
.end method

.method public abstract forceCheckTrafficStatus(I)V
.end method

.method public abstract getActiveSlotNum()I
.end method

.method public abstract getAppMonitorBinder()Lcom/miui/networkassistant/service/IAppMonitorBinder;
.end method

.method public abstract getCorrectedNormalAndLeisureMonthTotalUsed(I)[J
.end method

.method public abstract getCorrectedNormalMonthDataUsageUsed(I)J
.end method

.method public abstract getCurrentMonthTotalPackage(I)J
.end method

.method public abstract getIgnoreAppCount(I)I
.end method

.method public abstract getNormalTodayDataUsageUsed(I)J
.end method

.method public abstract getSharedPreBinder(Ljava/lang/String;Lcom/miui/networkassistant/service/ISharedPreBinderListener;)Lcom/miui/networkassistant/service/ISharedPreBinder;
.end method

.method public abstract getTodayDataUsageUsed(I)J
.end method

.method public abstract getTrafficCornBinder(I)Lcom/miui/networkassistant/service/ITrafficCornBinder;
.end method

.method public abstract isDataUsageIgnore(Ljava/lang/String;I)Z
.end method

.method public abstract isNeededPurchasePkg(I)Z
.end method

.method public abstract manualCorrectLeisureDataUsage(JI)V
.end method

.method public abstract manualCorrectNormalDataUsage(JI)V
.end method

.method public abstract reloadIgnoreAppList(I)V
.end method

.method public abstract setDataUsageIgnore(Ljava/lang/String;ZI)V
.end method

.method public abstract startCorrection(ZIZI)Z
.end method

.method public abstract startCorrectionDiagnostic(I)Z
.end method

.method public abstract toggleDataUsageAutoCorrection(ZI)V
.end method

.method public abstract toggleDataUsageOverLimitStopNetwork(ZI)V
.end method

.method public abstract toggleLeisureDataUsageOverLimitWarning(ZI)V
.end method

.method public abstract updateGlobleDataUsage(I)V
.end method

.method public abstract updateTrafficCorrectonEngine(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract updateTrafficStatusMonitor(I)V
.end method
