.class public Lcom/miui/sdk/tc/DataUsage$PackageDetail;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ADD_EXCEEDD:Ljava/lang/String; = "ADD_EXCEEDD"

.field private static final ADD_REMAINED:Ljava/lang/String; = "ADD_REMAINED"

.field private static final ADD_TOTAL:Ljava/lang/String; = "ADD_TOTAL"

.field private static final ADD_USED:Ljava/lang/String; = "ADD_USED"

.field private static final BILL_EXCEED:Ljava/lang/String; = "BILL_EXCEED"

.field private static final BILL_REMAINED:Ljava/lang/String; = "BILL_REMAINED"

.field private static final BILL_TOTAL:Ljava/lang/String; = "BILL_TOTAL"

.field private static final BILL_USED:Ljava/lang/String; = "BILL_USED"

.field private static final CALLTIME_EXCEED:Ljava/lang/String; = "CALLTIME_EXCEED"

.field private static final CALLTIME_REMAINED:Ljava/lang/String; = "CALLTIME_REMAINED"

.field private static final CALLTIME_TOTAL:Ljava/lang/String; = "CALLTIME_TOTAL"

.field private static final CALLTIME_USED:Ljava/lang/String; = "CALLTIME_USED"

.field private static final DAILY_EXCEED:Ljava/lang/String; = "DAILY_EXCEED"

.field private static final DAILY_REMAINED:Ljava/lang/String; = "DAILY_REMAINED"

.field private static final DAILY_TOTAL:Ljava/lang/String; = "DAILY_TOTAL"

.field private static final DAILY_USED:Ljava/lang/String; = "DAILY_USED"

.field private static final LEISURE_EXCEED:Ljava/lang/String; = "LEISURE_EXCEED"

.field private static final LEISURE_REMAINED:Ljava/lang/String; = "LEISURE_REMAINED"

.field private static final LEISURE_TOTAL:Ljava/lang/String; = "LEISURE_TOTAL"

.field private static final LEISURE_USED:Ljava/lang/String; = "LEISURE_USED"

.field private static final OLD_EXCEED:Ljava/lang/String; = "GPRS_EXCEED"

.field private static final OLD_REMAINED:Ljava/lang/String; = "TOTAL_GPRS_BALANCE"

.field private static final OLD_TOTAL:Ljava/lang/String; = "TOTAL_GPRS"

.field private static final OLD_USED:Ljava/lang/String; = "TOTAL_GPRS_USED"

.field private static final synthetic aCE:[I

.field private static sPkgKeyTypeMap:Ljava/util/Map;


# instance fields
.field private mHasRemain:Z

.field private mHasTotal:Z

.field private mHasUsed:Z

.field private mIsJustOver:Z

.field private mIsStable:Z

.field private mPkgType:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

.field private mRemainTrafficB:J

.field private mTotalTrafficB:J

.field private mUsedTrafficB:J


# direct methods
.method static synthetic -wrap0(Lcom/miui/sdk/tc/DataUsage$PackageDetail;Lcom/miui/sdk/tc/DataUsage$PackageDetail;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->merge(Lcom/miui/sdk/tc/DataUsage$PackageDetail;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->sPkgKeyTypeMap:Ljava/util/Map;

    sget-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->sPkgKeyTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "DAILY_TOTAL"

    sget-object v2, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->DailyPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->sPkgKeyTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "DAILY_USED"

    sget-object v2, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->DailyPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->sPkgKeyTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "DAILY_REMAINED"

    sget-object v2, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->DailyPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->sPkgKeyTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "DAILY_EXCEED"

    sget-object v2, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->DailyPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->sPkgKeyTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "ADD_TOTAL"

    sget-object v2, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->AddPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->sPkgKeyTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "ADD_USED"

    sget-object v2, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->AddPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->sPkgKeyTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "ADD_REMAINED"

    sget-object v2, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->AddPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->sPkgKeyTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "ADD_EXCEEDD"

    sget-object v2, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->AddPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->sPkgKeyTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "LEISURE_TOTAL"

    sget-object v2, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->LeisurePkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->sPkgKeyTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "LEISURE_USED"

    sget-object v2, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->LeisurePkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->sPkgKeyTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "LEISURE_REMAINED"

    sget-object v2, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->LeisurePkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->sPkgKeyTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "LEISURE_EXCEED"

    sget-object v2, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->LeisurePkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->sPkgKeyTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "TOTAL_GPRS_USED"

    sget-object v2, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->OldPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->sPkgKeyTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "TOTAL_GPRS_BALANCE"

    sget-object v2, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->OldPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->sPkgKeyTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "BILL_TOTAL"

    sget-object v2, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->BillPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->sPkgKeyTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "BILL_USED"

    sget-object v2, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->BillPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->sPkgKeyTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "BILL_REMAINED"

    sget-object v2, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->BillPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->sPkgKeyTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "BILL_EXCEED"

    sget-object v2, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->BillPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->sPkgKeyTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "CALLTIME_TOTAL"

    sget-object v2, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->CallTimePkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->sPkgKeyTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "CALLTIME_USED"

    sget-object v2, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->CallTimePkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->sPkgKeyTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "CALLTIME_REMAINED"

    sget-object v2, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->CallTimePkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->sPkgKeyTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "CALLTIME_EXCEED"

    sget-object v2, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->CallTimePkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4

    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mIsStable:Z

    iput-boolean v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasTotal:Z

    iput-boolean v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasUsed:Z

    iput-boolean v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasRemain:Z

    iput-boolean v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mIsJustOver:Z

    sget-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->NoPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    iput-object v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mPkgType:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    iput-wide v2, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mTotalTrafficB:J

    iput-wide v2, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mUsedTrafficB:J

    iput-wide v2, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mRemainTrafficB:J

    invoke-direct {p0, p1}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->parse(Lorg/json/JSONObject;)V

    return-void
.end method

.method private static synthetic aNs()[I
    .locals 3

    sget-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->aCE:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->aCE:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->values()[Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->AddPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    invoke-virtual {v1}, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v1, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->BillPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    invoke-virtual {v1}, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v1, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->CallTimePkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    invoke-virtual {v1}, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v1, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->DailyPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    invoke-virtual {v1}, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v1, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->LeisurePkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    invoke-virtual {v1}, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v1, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->NoPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    invoke-virtual {v1}, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v1, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->OldPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    invoke-virtual {v1}, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    sput-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->aCE:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1

    :catch_6
    move-exception v1

    goto :goto_0
.end method

.method private checkPkgType(Lorg/json/JSONObject;)V
    .locals 2

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->sPkgKeyTypeMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    iput-object v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mPkgType:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    :cond_0
    iget-object v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mPkgType:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    if-nez v0, :cond_1

    sget-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->NoPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    iput-object v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mPkgType:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    :cond_1
    return-void
.end method

.method private getTrafficStr(J)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "NULL"

    goto :goto_0
.end method

.method private merge(Lcom/miui/sdk/tc/DataUsage$PackageDetail;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->isStable()Z

    move-result v0

    iget-boolean v1, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mIsStable:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mTotalTrafficB:J

    iget-wide v2, p1, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mTotalTrafficB:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mTotalTrafficB:J

    iget-wide v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mUsedTrafficB:J

    iget-wide v2, p1, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mUsedTrafficB:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mUsedTrafficB:J

    iget-wide v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mRemainTrafficB:J

    iget-wide v2, p1, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mRemainTrafficB:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mRemainTrafficB:J

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v2, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mIsStable:Z

    iget-boolean v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasUsed:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p1, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasUsed:Z

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mUsedTrafficB:J

    iget-wide v4, p1, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mUsedTrafficB:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mUsedTrafficB:J

    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasRemain:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p1, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasRemain:Z

    if-eqz v0, :cond_7

    iget-wide v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mRemainTrafficB:J

    iget-wide v4, p1, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mRemainTrafficB:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mRemainTrafficB:J

    :cond_3
    :goto_2
    iget-boolean v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasUsed:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasRemain:Z

    :goto_3
    iput-boolean v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mIsStable:Z

    iget-boolean v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mIsStable:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mRemainTrafficB:J

    iget-wide v2, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mUsedTrafficB:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mTotalTrafficB:J

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasUsed:Z

    if-nez v0, :cond_5

    iget-boolean v0, p1, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasUsed:Z

    if-eqz v0, :cond_2

    :cond_5
    iget-boolean v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasUsed:Z

    if-eqz v0, :cond_6

    iget-wide v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mUsedTrafficB:J

    :goto_4
    iput-wide v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mUsedTrafficB:J

    iput-boolean v3, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasUsed:Z

    goto :goto_1

    :cond_6
    iget-wide v0, p1, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mUsedTrafficB:J

    goto :goto_4

    :cond_7
    iget-boolean v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasRemain:Z

    if-nez v0, :cond_8

    iget-boolean v0, p1, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasRemain:Z

    if-eqz v0, :cond_3

    :cond_8
    iget-boolean v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasRemain:Z

    if-eqz v0, :cond_9

    iget-wide v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mRemainTrafficB:J

    :goto_5
    iput-wide v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mRemainTrafficB:J

    iput-boolean v3, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasRemain:Z

    goto :goto_2

    :cond_9
    iget-wide v0, p1, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mRemainTrafficB:J

    goto :goto_5

    :cond_a
    move v0, v2

    goto :goto_3
.end method

.method private parse(Lorg/json/JSONObject;)V
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x1

    if-eqz p1, :cond_4

    invoke-direct {p0, p1}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->checkPkgType(Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->aNs()[I

    move-result-object v0

    iget-object v2, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mPkgType:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    invoke-virtual {v2}, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_1
    new-instance v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$DailyPkgKeys;

    invoke-direct {v0}, Lcom/miui/sdk/tc/DataUsage$PackageDetail$DailyPkgKeys;-><init>()V

    :goto_0
    iget-object v2, v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgKeys;->mTotalKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mTotalTrafficB:J

    iget-object v2, v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgKeys;->mTotalKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    iput-boolean v6, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasTotal:Z

    :cond_0
    iget-object v2, v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgKeys;->mUsedKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mUsedTrafficB:J

    iget-object v2, v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgKeys;->mUsedKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    iput-boolean v6, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasUsed:Z

    iget-wide v2, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mUsedTrafficB:J

    const-wide/16 v4, -0x2

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iput-boolean v1, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasUsed:Z

    iget-boolean v2, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasTotal:Z

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mTotalTrafficB:J

    iput-wide v2, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mUsedTrafficB:J

    iput-boolean v6, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasUsed:Z

    iput-boolean v6, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mIsJustOver:Z

    :cond_1
    iget-object v2, v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgKeys;->mRemainKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mRemainTrafficB:J

    iget-object v2, v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgKeys;->mRemainKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    iput-boolean v6, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasRemain:Z

    iget-boolean v2, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasTotal:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasUsed:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    iget-wide v2, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mTotalTrafficB:J

    iget-wide v4, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mRemainTrafficB:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mUsedTrafficB:J

    iput-boolean v6, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasUsed:Z

    :cond_2
    :goto_1
    iget-object v2, v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgKeys;->mExceedKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v0, v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgKeys;->mExceedKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    iget-wide v4, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mRemainTrafficB:J

    cmp-long v0, v4, v8

    if-gtz v0, :cond_3

    cmp-long v0, v2, v8

    if-lez v0, :cond_3

    iput-boolean v6, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasRemain:Z

    neg-long v2, v2

    iput-wide v2, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mRemainTrafficB:J

    iget-boolean v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasTotal:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasUsed:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    iget-wide v2, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mTotalTrafficB:J

    iget-wide v4, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mRemainTrafficB:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mUsedTrafficB:J

    iput-boolean v6, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasUsed:Z

    :cond_3
    :goto_2
    iget-boolean v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasTotal:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasUsed:Z

    :goto_3
    iput-boolean v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mIsStable:Z

    iget-boolean v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mIsStable:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasRemain:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mTotalTrafficB:J

    iget-wide v2, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mUsedTrafficB:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mRemainTrafficB:J

    iput-boolean v6, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasRemain:Z

    :cond_4
    return-void

    :pswitch_2
    new-instance v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$AddPkgKeys;

    invoke-direct {v0}, Lcom/miui/sdk/tc/DataUsage$PackageDetail$AddPkgKeys;-><init>()V

    goto/16 :goto_0

    :pswitch_3
    new-instance v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$LeisureKeys;

    invoke-direct {v0}, Lcom/miui/sdk/tc/DataUsage$PackageDetail$LeisureKeys;-><init>()V

    goto/16 :goto_0

    :pswitch_4
    new-instance v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$OldKeys;

    invoke-direct {v0}, Lcom/miui/sdk/tc/DataUsage$PackageDetail$OldKeys;-><init>()V

    goto/16 :goto_0

    :pswitch_5
    new-instance v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$BillKeys;

    invoke-direct {v0}, Lcom/miui/sdk/tc/DataUsage$PackageDetail$BillKeys;-><init>()V

    goto/16 :goto_0

    :pswitch_6
    new-instance v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$CallTimeKeys;

    invoke-direct {v0}, Lcom/miui/sdk/tc/DataUsage$PackageDetail$CallTimeKeys;-><init>()V

    goto/16 :goto_0

    :cond_5
    iget-boolean v2, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasTotal:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasUsed:Z

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mUsedTrafficB:J

    iget-wide v4, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mRemainTrafficB:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mTotalTrafficB:J

    iput-boolean v6, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasTotal:Z

    goto/16 :goto_1

    :cond_6
    iget-boolean v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasTotal:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasUsed:Z

    if-eqz v0, :cond_3

    iget-wide v2, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mUsedTrafficB:J

    iget-wide v4, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mRemainTrafficB:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mTotalTrafficB:J

    iput-boolean v6, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasTotal:Z

    goto :goto_2

    :cond_7
    move v0, v1

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public getDetailString()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u662f\u5426\u5b8c\u6574:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mIsStable:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u662f"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, ";\u5957\u9910\u603b\u91cf:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mTotalTrafficB:J

    invoke-direct {p0, v2, v3}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->getTrafficStr(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, ";\u5df2\u4f7f\u7528:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mUsedTrafficB:J

    invoke-direct {p0, v2, v3}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->getTrafficStr(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, ";\u5269\u4f59:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mRemainTrafficB:J

    invoke-direct {p0, v2, v3}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->getTrafficStr(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "\u5426"

    goto :goto_0
.end method

.method public getRemainTrafficB()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mRemainTrafficB:J

    return-wide v0
.end method

.method public getTotalTrafficB()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mTotalTrafficB:J

    return-wide v0
.end method

.method public getType()Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;
    .locals 1

    iget-object v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mPkgType:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    return-object v0
.end method

.method public getUsedTrafficB()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mUsedTrafficB:J

    return-wide v0
.end method

.method public hasRemain()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasRemain:Z

    return v0
.end method

.method public hasTotal()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasTotal:Z

    return v0
.end method

.method public hasUsed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasUsed:Z

    return v0
.end method

.method public hasValue()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasTotal:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasUsed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mHasRemain:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isJustOver()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mIsJustOver:Z

    return v0
.end method

.method public isStable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mIsStable:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsStable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mIsStable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ";mTotalTrafficB:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mTotalTrafficB:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ";mUsedTrafficB:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mUsedTrafficB:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ";mRemainTrafficB:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->mRemainTrafficB:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
