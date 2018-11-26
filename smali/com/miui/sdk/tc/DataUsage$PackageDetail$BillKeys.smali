.class Lcom/miui/sdk/tc/DataUsage$PackageDetail$BillKeys;
.super Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgKeys;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgKeys;-><init>(Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgKeys;)V

    const-string/jumbo v0, "BILL_TOTAL"

    iput-object v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$BillKeys;->mTotalKey:Ljava/lang/String;

    const-string/jumbo v0, "BILL_USED"

    iput-object v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$BillKeys;->mUsedKey:Ljava/lang/String;

    const-string/jumbo v0, "BILL_REMAINED"

    iput-object v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$BillKeys;->mRemainKey:Ljava/lang/String;

    const-string/jumbo v0, "BILL_EXCEED"

    iput-object v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$BillKeys;->mExceedKey:Ljava/lang/String;

    return-void
.end method
