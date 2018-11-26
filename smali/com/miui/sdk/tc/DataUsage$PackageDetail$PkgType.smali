.class final enum Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

.field public static final enum AddPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

.field public static final enum BillPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

.field public static final enum CallTimePkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

.field public static final enum DailyPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

.field public static final enum LeisurePkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

.field public static final enum NoPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

.field public static final enum OldPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    const-string/jumbo v1, "NoPkg"

    invoke-direct {v0, v1, v3}, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->NoPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    new-instance v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    const-string/jumbo v1, "DailyPkg"

    invoke-direct {v0, v1, v4}, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->DailyPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    new-instance v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    const-string/jumbo v1, "AddPkg"

    invoke-direct {v0, v1, v5}, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->AddPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    new-instance v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    const-string/jumbo v1, "LeisurePkg"

    invoke-direct {v0, v1, v6}, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->LeisurePkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    new-instance v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    const-string/jumbo v1, "OldPkg"

    invoke-direct {v0, v1, v7}, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->OldPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    new-instance v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    const-string/jumbo v1, "BillPkg"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->BillPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    new-instance v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    const-string/jumbo v1, "CallTimePkg"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->CallTimePkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    sget-object v1, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->NoPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->DailyPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->AddPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->LeisurePkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->OldPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->BillPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->CallTimePkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->$VALUES:[Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;
    .locals 1

    const-class v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    return-object v0
.end method

.method public static values()[Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;
    .locals 1

    sget-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->$VALUES:[Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    return-object v0
.end method
