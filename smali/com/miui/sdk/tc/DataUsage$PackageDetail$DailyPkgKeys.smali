.class Lcom/miui/sdk/tc/DataUsage$PackageDetail$DailyPkgKeys;
.super Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgKeys;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgKeys;-><init>(Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgKeys;)V

    const-string/jumbo v0, "DAILY_TOTAL"

    iput-object v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$DailyPkgKeys;->mTotalKey:Ljava/lang/String;

    const-string/jumbo v0, "DAILY_USED"

    iput-object v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$DailyPkgKeys;->mUsedKey:Ljava/lang/String;

    const-string/jumbo v0, "DAILY_REMAINED"

    iput-object v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$DailyPkgKeys;->mRemainKey:Ljava/lang/String;

    const-string/jumbo v0, "DAILY_EXCEED"

    iput-object v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$DailyPkgKeys;->mExceedKey:Ljava/lang/String;

    return-void
.end method
