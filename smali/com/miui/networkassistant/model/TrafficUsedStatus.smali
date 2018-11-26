.class public Lcom/miui/networkassistant/model/TrafficUsedStatus;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final ERROR_CODE_GET_SMS_INSTRUCTION_FAILURE:I = 0x5

.field public static final ERROR_CODE_INVALID_SMS:I = 0x2

.field public static final ERROR_CODE_PARSE_FAILURE:I = 0x4

.field public static final ERROR_CODE_SEND_FAILURE:I = 0x1

.field public static final ERROR_CODE_TIMEOUT:I = 0x3

.field public static final ERROR_CODE_WEB_TC_FAILURE:I = 0x6

.field public static final RETURN_CODE_CONFIG_UPDATE:I = 0xb

.field public static final RETURN_CODE_ERROR:I = 0xa

.field public static final RETURN_CODE_OK:I


# instance fields
.field private mBillEnabled:Z

.field private mBillRemained:J

.field private mBillTotal:J

.field private mBillUsed:J

.field private mCallTimeEnabled:Z

.field private mCallTimeRemained:J

.field private mCallTimeTotal:J

.field private mCallTimeUsed:J

.field private mCorrectionType:I

.field private mEngine:Ljava/lang/String;

.field private mExtraEnabled:Z

.field private mExtraRemainB:J

.field private mExtraTotalB:J

.field private mExtraUsedB:J

.field private mFailureSms:Ljava/lang/String;

.field private mFromWeb:Z

.field private mIsExtraStable:Z

.field private mIsJustOver:Z

.field private mIsLeisureStable:Z

.field private mIsNormalStable:Z

.field private mIsTotalLimitError:Z

.field private mLeisureEnabled:Z

.field private mLeisureRemainB:J

.field private mLeisureTotalB:J

.field private mLeisureUsedB:J

.field private mRemainTrafficB:J

.field private mReturnCode:I

.field private mSlotNum:I

.field private mTotalTrafficB:J

.field private mUsedTrafficB:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/networkassistant/model/TrafficUsedStatus$1;

    invoke-direct {v0}, Lcom/miui/networkassistant/model/TrafficUsedStatus$1;-><init>()V

    sput-object v0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mReturnCode:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mSlotNum:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;-><init>(I)V

    iput p2, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mSlotNum:I

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mReturnCode:I

    iput-wide p1, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mUsedTrafficB:J

    iput-wide p3, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mRemainTrafficB:J

    return-void
.end method

.method public constructor <init>(JJI)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/networkassistant/model/TrafficUsedStatus;-><init>(JJ)V

    iput p5, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mSlotNum:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mSlotNum:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mReturnCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mCorrectionType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mFailureSms:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mEngine:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mFromWeb:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mIsTotalLimitError:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mIsNormalStable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mIsJustOver:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mTotalTrafficB:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mUsedTrafficB:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mRemainTrafficB:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mLeisureEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mIsLeisureStable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mLeisureTotalB:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mLeisureUsedB:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mLeisureRemainB:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mExtraEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_7

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mIsExtraStable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mExtraTotalB:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mExtraUsedB:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mExtraRemainB:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_8

    move v0, v1

    :goto_8
    iput-boolean v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mBillEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mBillTotal:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mBillRemained:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mBillUsed:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_9

    :goto_9
    iput-boolean v1, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mCallTimeEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mCallTimeTotal:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mCallTimeUsed:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mCallTimeRemained:J

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0

    :cond_1
    move v0, v2

    goto/16 :goto_1

    :cond_2
    move v0, v2

    goto/16 :goto_2

    :cond_3
    move v0, v2

    goto/16 :goto_3

    :cond_4
    move v0, v2

    goto/16 :goto_4

    :cond_5
    move v0, v2

    goto :goto_5

    :cond_6
    move v0, v2

    goto :goto_6

    :cond_7
    move v0, v2

    goto :goto_7

    :cond_8
    move v0, v2

    goto :goto_8

    :cond_9
    move v1, v2

    goto :goto_9
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBillRemained()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mBillRemained:J

    return-wide v0
.end method

.method public getBillTotal()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mBillTotal:J

    return-wide v0
.end method

.method public getBillUsed()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mBillUsed:J

    return-wide v0
.end method

.method public getCallTimeRemained()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mCallTimeRemained:J

    return-wide v0
.end method

.method public getCallTimeTotal()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mCallTimeTotal:J

    return-wide v0
.end method

.method public getCallTimeUsed()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mCallTimeUsed:J

    return-wide v0
.end method

.method public getCorrectionType()I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mCorrectionType:I

    return v0
.end method

.method public getEngine()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mEngine:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraRemainB()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mExtraRemainB:J

    return-wide v0
.end method

.method public getExtraTotalB()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mExtraTotalB:J

    return-wide v0
.end method

.method public getExtraUsedB()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mExtraUsedB:J

    return-wide v0
.end method

.method public getFailureSms()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mFailureSms:Ljava/lang/String;

    return-object v0
.end method

.method public getLeisureRemainB()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mLeisureRemainB:J

    return-wide v0
.end method

.method public getLeisureTotalB()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mLeisureTotalB:J

    return-wide v0
.end method

.method public getLeisureUsedB()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mLeisureUsedB:J

    return-wide v0
.end method

.method public getRemainTrafficB()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mRemainTrafficB:J

    return-wide v0
.end method

.method public getReturnCode()I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mReturnCode:I

    return v0
.end method

.method public getSlotNum()I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mSlotNum:I

    return v0
.end method

.method public getTotalTrafficB()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mTotalTrafficB:J

    return-wide v0
.end method

.method public getUsedTrafficB()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mUsedTrafficB:J

    return-wide v0
.end method

.method public isBillEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mBillEnabled:Z

    return v0
.end method

.method public isCallTimeEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mCallTimeEnabled:Z

    return v0
.end method

.method public isExtraEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mExtraEnabled:Z

    return v0
.end method

.method public isExtraStable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mIsExtraStable:Z

    return v0
.end method

.method public isFromWeb()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mFromWeb:Z

    return v0
.end method

.method public isJustOver()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mIsJustOver:Z

    return v0
.end method

.method public isLeisureEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mLeisureEnabled:Z

    return v0
.end method

.method public isLeisureJustOver()Z
    .locals 4

    iget-wide v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mLeisureTotalB:J

    iget-wide v2, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mLeisureUsedB:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLeisureStable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mIsLeisureStable:Z

    return v0
.end method

.method public isNormalJustOver()Z
    .locals 6

    iget-wide v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mTotalTrafficB:J

    iget-wide v2, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mExtraTotalB:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mUsedTrafficB:J

    iget-wide v4, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mExtraUsedB:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNormalStable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mIsNormalStable:Z

    return v0
.end method

.method public isTotalLimitError()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mIsTotalLimitError:Z

    return v0
.end method

.method public setBillEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mBillEnabled:Z

    return-void
.end method

.method public setBillRemained(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mBillRemained:J

    return-void
.end method

.method public setBillTotal(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mBillTotal:J

    return-void
.end method

.method public setBillUsed(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mBillUsed:J

    return-void
.end method

.method public setCallTimeEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mCallTimeEnabled:Z

    return-void
.end method

.method public setCallTimeRemained(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mCallTimeRemained:J

    return-void
.end method

.method public setCallTimeTotal(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mCallTimeTotal:J

    return-void
.end method

.method public setCallTimeUsed(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mCallTimeUsed:J

    return-void
.end method

.method public setCorrectionType(I)V
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mCorrectionType:I

    return-void
.end method

.method public setEngine(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mEngine:Ljava/lang/String;

    return-void
.end method

.method public setExtraEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mExtraEnabled:Z

    return-void
.end method

.method public setExtraRemainB(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mExtraRemainB:J

    return-void
.end method

.method public setExtraStable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mIsExtraStable:Z

    return-void
.end method

.method public setExtraTotalB(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mExtraTotalB:J

    return-void
.end method

.method public setExtraUsedB(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mExtraUsedB:J

    return-void
.end method

.method public setFailureSms(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mFailureSms:Ljava/lang/String;

    return-void
.end method

.method public setFromWeb(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mFromWeb:Z

    return-void
.end method

.method public setJustOver(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mIsJustOver:Z

    return-void
.end method

.method public setLeisureEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mLeisureEnabled:Z

    return-void
.end method

.method public setLeisureRemainB(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mLeisureRemainB:J

    return-void
.end method

.method public setLeisureStable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mIsLeisureStable:Z

    return-void
.end method

.method public setLeisureTotalB(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mLeisureTotalB:J

    return-void
.end method

.method public setLeisureUsedB(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mLeisureUsedB:J

    return-void
.end method

.method public setNormalStable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mIsNormalStable:Z

    return-void
.end method

.method public setRemainTrafficB(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mRemainTrafficB:J

    return-void
.end method

.method public setReturnCode(I)V
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mReturnCode:I

    return-void
.end method

.method public setSlotNum(I)V
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mSlotNum:I

    return-void
.end method

.method public setTotalLimitError(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mIsTotalLimitError:Z

    return-void
.end method

.method public setTotalTrafficB(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mTotalTrafficB:J

    return-void
.end method

.method public setUsedTrafficB(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mUsedTrafficB:J

    return-void
.end method

.method public toBillString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mReturnCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mReturnCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ";mLeftBill:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mBillRemained:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mReturnCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mReturnCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ";mUsedTrafficB:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mUsedTrafficB:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ";mLeftTrafficB:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mRemainTrafficB:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toTrafficString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mSlotNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mReturnCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mCorrectionType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mFailureSms:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mEngine:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mFromWeb:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mIsTotalLimitError:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mIsNormalStable:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mIsJustOver:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v4, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mTotalTrafficB:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v4, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mUsedTrafficB:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v4, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mRemainTrafficB:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mLeisureEnabled:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mIsLeisureStable:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v4, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mLeisureTotalB:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v4, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mLeisureUsedB:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v4, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mLeisureRemainB:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mExtraEnabled:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mIsExtraStable:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v4, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mExtraTotalB:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v4, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mExtraUsedB:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v4, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mExtraRemainB:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mBillEnabled:Z

    if-eqz v0, :cond_8

    move v0, v1

    :goto_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v4, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mBillTotal:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v4, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mBillUsed:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v4, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mBillRemained:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mCallTimeEnabled:Z

    if-eqz v0, :cond_9

    :goto_9
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mCallTimeTotal:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mCallTimeUsed:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/miui/networkassistant/model/TrafficUsedStatus;->mCallTimeRemained:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0

    :cond_1
    move v0, v2

    goto/16 :goto_1

    :cond_2
    move v0, v2

    goto/16 :goto_2

    :cond_3
    move v0, v2

    goto/16 :goto_3

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    move v0, v2

    goto :goto_5

    :cond_6
    move v0, v2

    goto :goto_6

    :cond_7
    move v0, v2

    goto :goto_7

    :cond_8
    move v0, v2

    goto :goto_8

    :cond_9
    move v1, v2

    goto :goto_9
.end method
