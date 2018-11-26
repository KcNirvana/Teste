.class Lcom/miui/sdk/tc/DataUsage$PackageDetail$AddPkgKeys;
.super Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgKeys;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgKeys;-><init>(Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgKeys;)V

    const-string/jumbo v0, "ADD_TOTAL"

    iput-object v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$AddPkgKeys;->mTotalKey:Ljava/lang/String;

    const-string/jumbo v0, "ADD_USED"

    iput-object v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$AddPkgKeys;->mUsedKey:Ljava/lang/String;

    const-string/jumbo v0, "ADD_REMAINED"

    iput-object v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$AddPkgKeys;->mRemainKey:Ljava/lang/String;

    const-string/jumbo v0, "ADD_EXCEEDD"

    iput-object v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$AddPkgKeys;->mExceedKey:Ljava/lang/String;

    return-void
.end method
