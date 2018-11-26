.class public abstract Lcom/miui/networkassistant/service/ITrafficManageBinder$Stub;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/service/ITrafficManageBinder;


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.networkassistant.service.ITrafficManageBinder"

.field static final TRANSACTION_applyCorrectedPkgsAndUsageValues:I = 0x1c

.field static final TRANSACTION_forceCheckDailyLimitStatus:I = 0x13

.field static final TRANSACTION_forceCheckLockScreenStatus:I = 0x15

.field static final TRANSACTION_forceCheckRoamingDailyLimitStatus:I = 0x14

.field static final TRANSACTION_forceCheckTethingSettingStatus:I = 0x16

.field static final TRANSACTION_forceCheckTrafficStatus:I = 0x12

.field static final TRANSACTION_getActiveSlotNum:I = 0x4

.field static final TRANSACTION_getAppMonitorBinder:I = 0x2

.field static final TRANSACTION_getCorrectedNormalAndLeisureMonthTotalUsed:I = 0x10

.field static final TRANSACTION_getCorrectedNormalMonthDataUsageUsed:I = 0xe

.field static final TRANSACTION_getCurrentMonthTotalPackage:I = 0xf

.field static final TRANSACTION_getIgnoreAppCount:I = 0x1a

.field static final TRANSACTION_getNormalTodayDataUsageUsed:I = 0xc

.field static final TRANSACTION_getSharedPreBinder:I = 0x1

.field static final TRANSACTION_getTodayDataUsageUsed:I = 0xd

.field static final TRANSACTION_getTrafficCornBinder:I = 0x3

.field static final TRANSACTION_isDataUsageIgnore:I = 0x17

.field static final TRANSACTION_isNeededPurchasePkg:I = 0x1b

.field static final TRANSACTION_manualCorrectLeisureDataUsage:I = 0x8

.field static final TRANSACTION_manualCorrectNormalDataUsage:I = 0x7

.field static final TRANSACTION_reloadIgnoreAppList:I = 0x19

.field static final TRANSACTION_setDataUsageIgnore:I = 0x18

.field static final TRANSACTION_startCorrection:I = 0x5

.field static final TRANSACTION_startCorrectionDiagnostic:I = 0x1e

.field static final TRANSACTION_toggleDataUsageAutoCorrection:I = 0xa

.field static final TRANSACTION_toggleDataUsageOverLimitStopNetwork:I = 0x9

.field static final TRANSACTION_toggleLeisureDataUsageOverLimitWarning:I = 0xb

.field static final TRANSACTION_updateGlobleDataUsage:I = 0x6

.field static final TRANSACTION_updateTrafficCorrectonEngine:I = 0x1d

.field static final TRANSACTION_updateTrafficStatusMonitor:I = 0x11


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.miui.networkassistant.service.ITrafficManageBinder"

    invoke-virtual {p0, p0, v0}, Lcom/miui/networkassistant/service/ITrafficManageBinder$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/networkassistant/service/ITrafficManageBinder;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "com.miui.networkassistant.service.ITrafficManageBinder"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/networkassistant/service/ITrafficManageBinder;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/miui/networkassistant/service/ITrafficManageBinder;

    return-object v0

    :cond_1
    new-instance v0, Lcom/miui/networkassistant/service/ITrafficManageBinder$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/ITrafficManageBinder$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_0
    const-string/jumbo v0, "com.miui.networkassistant.service.ITrafficManageBinder"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :sswitch_1
    const-string/jumbo v2, "com.miui.networkassistant.service.ITrafficManageBinder"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/networkassistant/service/ISharedPreBinderListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/networkassistant/service/ISharedPreBinderListener;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/miui/networkassistant/service/ITrafficManageBinder$Stub;->getSharedPreBinder(Ljava/lang/String;Lcom/miui/networkassistant/service/ISharedPreBinderListener;)Lcom/miui/networkassistant/service/ISharedPreBinder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/miui/networkassistant/service/ISharedPreBinder;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    :sswitch_2
    const-string/jumbo v2, "com.miui.networkassistant.service.ITrafficManageBinder"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/ITrafficManageBinder$Stub;->getAppMonitorBinder()Lcom/miui/networkassistant/service/IAppMonitorBinder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/miui/networkassistant/service/IAppMonitorBinder;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    :sswitch_3
    const-string/jumbo v2, "com.miui.networkassistant.service.ITrafficManageBinder"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/miui/networkassistant/service/ITrafficManageBinder$Stub;->getTrafficCornBinder(I)Lcom/miui/networkassistant/service/ITrafficCornBinder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/miui/networkassistant/service/ITrafficCornBinder;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    :sswitch_4
    const-string/jumbo v0, "com.miui.networkassistant.service.ITrafficManageBinder"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/ITrafficManageBinder$Stub;->getActiveSlotNum()I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :sswitch_5
    const-string/jumbo v0, "com.miui.networkassistant.service.ITrafficManageBinder"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    move v3, v1

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p0, v0, v4, v3, v5}, Lcom/miui/networkassistant/service/ITrafficManageBinder$Stub;->startCorrection(ZIZI)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_3

    move v2, v1

    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move v3, v2

    goto :goto_1

    :sswitch_6
    const-string/jumbo v0, "com.miui.networkassistant.service.ITrafficManageBinder"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/service/ITrafficManageBinder$Stub;->updateGlobleDataUsage(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :sswitch_7
    const-string/jumbo v0, "com.miui.networkassistant.service.ITrafficManageBinder"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v2, v3, v0}, Lcom/miui/networkassistant/service/ITrafficManageBinder$Stub;->manualCorrectNormalDataUsage(JI)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :sswitch_8
    const-string/jumbo v0, "com.miui.networkassistant.service.ITrafficManageBinder"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v2, v3, v0}, Lcom/miui/networkassistant/service/ITrafficManageBinder$Stub;->manualCorrectLeisureDataUsage(JI)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :sswitch_9
    const-string/jumbo v0, "com.miui.networkassistant.service.ITrafficManageBinder"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    move v2, v1

    :cond_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/miui/networkassistant/service/ITrafficManageBinder$Stub;->toggleDataUsageOverLimitStopNetwork(ZI)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :sswitch_a
    const-string/jumbo v0, "com.miui.networkassistant.service.ITrafficManageBinder"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    move v2, v1

    :cond_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/miui/networkassistant/service/ITrafficManageBinder$Stub;->toggleDataUsageAutoCorrection(ZI)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :sswitch_b
    const-string/jumbo v0, "com.miui.networkassistant.service.ITrafficManageBinder"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    move v2, v1

    :cond_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/miui/networkassistant/service/ITrafficManageBinder$Stub;->toggleLeisureDataUsageOverLimitWarning(ZI)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :sswitch_c
    const-string/jumbo v0, "com.miui.networkassistant.service.ITrafficManageBinder"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/service/ITrafficManageBinder$Stub;->getNormalTodayDataUsageUsed(I)J

    move-result-wide v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    :sswitch_d
    const-string/jumbo v0, "com.miui.networkassistant.service.ITrafficManageBinder"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/service/ITrafficManageBinder$Stub;->getTodayDataUsageUsed(I)J

    move-result-wide v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    :sswitch_e
    const-string/jumbo v0, "com.miui.networkassistant.service.ITrafficManageBinder"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/service/ITrafficManageBinder$Stub;->getCorrectedNormalMonthDataUsageUsed(I)J

    move-result-wide v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    :sswitch_f
    const-string/jumbo v0, "com.miui.networkassistant.service.ITrafficManageBinder"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/service/ITrafficManageBinder$Stub;->getCurrentMonthTotalPackage(I)J

    move-result-wide v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    :sswitch_10
    const-string/jumbo v0, "com.miui.networkassistant.service.ITrafficManageBinder"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/service/ITrafficManageBinder$Stub;->getCorrectedNormalAndLeisureMonthTotalUsed(I)[J

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    return v1

    :sswitch_11
    const-string/jumbo v0, "com.miui.networkassistant.service.ITrafficManageBinder"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/service/ITrafficManageBinder$Stub;->updateTrafficStatusMonitor(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :sswitch_12
    const-string/jumbo v0, "com.miui.networkassistant.service.ITrafficManageBinder"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/service/ITrafficManageBinder$Stub;->forceCheckTrafficStatus(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :sswitch_13
    const-string/jumbo v0, "com.miui.networkassistant.service.ITrafficManageBinder"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/service/ITrafficManageBinder$Stub;->forceCheckDailyLimitStatus(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :sswitch_14
    const-string/jumbo v0, "com.miui.networkassistant.service.ITrafficManageBinder"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/service/ITrafficManageBinder$Stub;->forceCheckRoamingDailyLimitStatus(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :sswitch_15
    const-string/jumbo v0, "com.miui.networkassistant.service.ITrafficManageBinder"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/service/ITrafficManageBinder$Stub;->forceCheckLockScreenStatus(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :sswitch_16
    const-string/jumbo v0, "com.miui.networkassistant.service.ITrafficManageBinder"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/ITrafficManageBinder$Stub;->forceCheckTethingSettingStatus()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :sswitch_17
    const-string/jumbo v0, "com.miui.networkassistant.service.ITrafficManageBinder"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/miui/networkassistant/service/ITrafficManageBinder$Stub;->isDataUsageIgnore(Ljava/lang/String;I)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_9

    move v2, v1

    :cond_9
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :sswitch_18
    const-string/jumbo v0, "com.miui.networkassistant.service.ITrafficManageBinder"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a

    move v2, v1

    :cond_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/miui/networkassistant/service/ITrafficManageBinder$Stub;->setDataUsageIgnore(Ljava/lang/String;ZI)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :sswitch_19
    const-string/jumbo v0, "com.miui.networkassistant.service.ITrafficManageBinder"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/service/ITrafficManageBinder$Stub;->reloadIgnoreAppList(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :sswitch_1a
    const-string/jumbo v0, "com.miui.networkassistant.service.ITrafficManageBinder"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/service/ITrafficManageBinder$Stub;->getIgnoreAppCount(I)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :sswitch_1b
    const-string/jumbo v0, "com.miui.networkassistant.service.ITrafficManageBinder"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/service/ITrafficManageBinder$Stub;->isNeededPurchasePkg(I)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_b

    move v2, v1

    :cond_b
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :sswitch_1c
    const-string/jumbo v3, "com.miui.networkassistant.service.ITrafficManageBinder"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_c

    sget-object v0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/model/TrafficUsedStatus;

    :cond_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_d

    move v2, v1

    :cond_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/miui/networkassistant/service/ITrafficManageBinder$Stub;->applyCorrectedPkgsAndUsageValues(Lcom/miui/networkassistant/model/TrafficUsedStatus;ZI)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :sswitch_1d
    const-string/jumbo v0, "com.miui.networkassistant.service.ITrafficManageBinder"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/miui/networkassistant/service/ITrafficManageBinder$Stub;->updateTrafficCorrectonEngine(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_e

    move v2, v1

    :cond_e
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :sswitch_1e
    const-string/jumbo v0, "com.miui.networkassistant.service.ITrafficManageBinder"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/service/ITrafficManageBinder$Stub;->startCorrectionDiagnostic(I)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_f

    move v2, v1

    :cond_f
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
