.class Lcom/miui/sdk/tc/DataUsage$PackageDetail$CallTimeKeys;
.super Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgKeys;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgKeys;-><init>(Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgKeys;)V

    const-string/jumbo v0, "CALLTIME_TOTAL"

    iput-object v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$CallTimeKeys;->mTotalKey:Ljava/lang/String;

    const-string/jumbo v0, "CALLTIME_USED"

    iput-object v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$CallTimeKeys;->mUsedKey:Ljava/lang/String;

    const-string/jumbo v0, "CALLTIME_REMAINED"

    iput-object v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$CallTimeKeys;->mRemainKey:Ljava/lang/String;

    const-string/jumbo v0, "CALLTIME_EXCEED"

    iput-object v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$CallTimeKeys;->mExceedKey:Ljava/lang/String;

    return-void
.end method
