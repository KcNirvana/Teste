.class public final enum Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;
.super Ljava/lang/Enum;
.source "SeBehaviorType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

.field public static final enum UC_APDID_LOCAL:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

.field public static final enum UC_EDGE_ASK_RISK:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

.field public static final enum UC_EDGE_INIT_FAIL:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

.field public static final enum UC_EDGE_INIT_OK:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

.field public static final enum UC_EDGE_INJECT_LIST:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

.field public static final enum UC_EDGE_LOC_APPS:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

.field public static final enum UC_EDGE_POST_UA:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

.field public static final enum UC_EDGE_SYNC:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

.field public static final enum UC_RDS_APK_VERIFY:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

.field public static final enum UC_SC_ERRORS:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

.field public static final enum UC_SC_WARNS:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

.field public static final enum UC_UTK_24_ZEROS:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

.field public static final enum UC_UTK_ILLEGAL:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

.field public static final enum UC_UTK_NORMAL:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

.field public static final enum UC_UTK_UTDID:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;


# instance fields
.field private seedID:Ljava/lang/String;

.field private useCaseID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    const-string/jumbo v1, "UC_SC_ERRORS"

    const-string/jumbo v2, "SEC_SDK_ERRORS"

    const-string/jumbo v3, "err"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;->UC_SC_ERRORS:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    new-instance v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    const-string/jumbo v1, "UC_SC_WARNS"

    const-string/jumbo v2, "SEC_SDK_WARNS"

    const-string/jumbo v3, "warn"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;->UC_SC_WARNS:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    new-instance v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    const-string/jumbo v1, "UC_UTK_24_ZEROS"

    const-string/jumbo v2, "SEC_UMID_REPORT"

    const-string/jumbo v3, "utk_24_zeros"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;->UC_UTK_24_ZEROS:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    new-instance v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    const-string/jumbo v1, "UC_UTK_UTDID"

    const-string/jumbo v2, "SEC_UMID_REPORT"

    const-string/jumbo v3, "utk_utdid"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;->UC_UTK_UTDID:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    new-instance v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    const-string/jumbo v1, "UC_UTK_NORMAL"

    const-string/jumbo v2, "SEC_UMID_REPORT"

    const-string/jumbo v3, "utk_normal"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;->UC_UTK_NORMAL:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    new-instance v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    const-string/jumbo v1, "UC_UTK_ILLEGAL"

    const/4 v2, 0x5

    const-string/jumbo v3, "SEC_UMID_REPORT"

    const-string/jumbo v4, "utk_illegal"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;->UC_UTK_ILLEGAL:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    new-instance v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    const-string/jumbo v1, "UC_APDID_LOCAL"

    const/4 v2, 0x6

    const-string/jumbo v3, "SEC_GET_TOKEN"

    const-string/jumbo v4, "getToken"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;->UC_APDID_LOCAL:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    new-instance v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    const-string/jumbo v1, "UC_EDGE_INIT_OK"

    const/4 v2, 0x7

    const-string/jumbo v3, "EDGE_INIT_REPORT"

    const-string/jumbo v4, "init_normal"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;->UC_EDGE_INIT_OK:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    new-instance v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    const-string/jumbo v1, "UC_EDGE_INIT_FAIL"

    const/16 v2, 0x8

    const-string/jumbo v3, "EDGE_INIT_REPORT"

    const-string/jumbo v4, "init_abnormal"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;->UC_EDGE_INIT_FAIL:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    new-instance v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    const-string/jumbo v1, "UC_EDGE_ASK_RISK"

    const/16 v2, 0x9

    const-string/jumbo v3, "EDGE_GET_RISK_RESULT"

    const-string/jumbo v4, "get_risk_result"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;->UC_EDGE_ASK_RISK:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    new-instance v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    const-string/jumbo v1, "UC_EDGE_POST_UA"

    const/16 v2, 0xa

    const-string/jumbo v3, "EDGE_POST_UA"

    const-string/jumbo v4, "post_ua"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;->UC_EDGE_POST_UA:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    new-instance v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    const-string/jumbo v1, "UC_EDGE_SYNC"

    const/16 v2, 0xb

    const-string/jumbo v3, "EDGE_SYNC_REPORT"

    const-string/jumbo v4, "sync"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;->UC_EDGE_SYNC:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    new-instance v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    const-string/jumbo v1, "UC_EDGE_INJECT_LIST"

    const/16 v2, 0xc

    const-string/jumbo v3, "EDGE_INJECT_LIST"

    const-string/jumbo v4, "get_inject_list"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;->UC_EDGE_INJECT_LIST:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    new-instance v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    const-string/jumbo v1, "UC_EDGE_LOC_APPS"

    const/16 v2, 0xd

    const-string/jumbo v3, "EDGE_LOC_HOOK_LIST"

    const-string/jumbo v4, "hook_loc"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;->UC_EDGE_LOC_APPS:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    new-instance v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    const-string/jumbo v1, "UC_RDS_APK_VERIFY"

    const/16 v2, 0xe

    const-string/jumbo v3, "APK_VERIFY_RESULT"

    const-string/jumbo v4, "apk_verify"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;->UC_RDS_APK_VERIFY:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    const/16 v0, 0xf

    new-array v0, v0, [Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    sget-object v1, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;->UC_SC_ERRORS:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;->UC_SC_WARNS:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;->UC_UTK_24_ZEROS:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;->UC_UTK_UTDID:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;->UC_UTK_NORMAL:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;->UC_UTK_ILLEGAL:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;->UC_APDID_LOCAL:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;->UC_EDGE_INIT_OK:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;->UC_EDGE_INIT_FAIL:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;->UC_EDGE_ASK_RISK:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;->UC_EDGE_POST_UA:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;->UC_EDGE_SYNC:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;->UC_EDGE_INJECT_LIST:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;->UC_EDGE_LOC_APPS:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;->UC_RDS_APK_VERIFY:Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;->$VALUES:[Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;->useCaseID:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;->seedID:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;
    .locals 1

    const-class v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;
    .locals 1

    sget-object v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;->$VALUES:[Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    invoke-virtual {v0}, [Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;

    return-object v0
.end method


# virtual methods
.method public getSeedID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;->seedID:Ljava/lang/String;

    return-object v0
.end method

.method public getUseCaseID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/SeBehaviorType;->useCaseID:Ljava/lang/String;

    return-object v0
.end method
