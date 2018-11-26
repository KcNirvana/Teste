.class Lcom/miui/sdk/tc/DataUsage$PackageDetail$OldKeys;
.super Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgKeys;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgKeys;-><init>(Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgKeys;)V

    const-string/jumbo v0, "TOTAL_GPRS"

    iput-object v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$OldKeys;->mTotalKey:Ljava/lang/String;

    const-string/jumbo v0, "TOTAL_GPRS_USED"

    iput-object v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$OldKeys;->mUsedKey:Ljava/lang/String;

    const-string/jumbo v0, "TOTAL_GPRS_BALANCE"

    iput-object v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$OldKeys;->mRemainKey:Ljava/lang/String;

    const-string/jumbo v0, "GPRS_EXCEED"

    iput-object v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$OldKeys;->mExceedKey:Ljava/lang/String;

    return-void
.end method
