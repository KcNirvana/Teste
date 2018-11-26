.class public final enum Lcom/xiaomi/analytics/internal/util/NetState;
.super Ljava/lang/Enum;
.source ""


# static fields
.field public static final enum bnE:Lcom/xiaomi/analytics/internal/util/NetState;

.field public static final enum bnF:Lcom/xiaomi/analytics/internal/util/NetState;

.field public static final enum bnG:Lcom/xiaomi/analytics/internal/util/NetState;

.field private static final synthetic bnH:[Lcom/xiaomi/analytics/internal/util/NetState;

.field public static final enum bnI:Lcom/xiaomi/analytics/internal/util/NetState;

.field public static final enum bnJ:Lcom/xiaomi/analytics/internal/util/NetState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/xiaomi/analytics/internal/util/NetState;

    const-string/jumbo v1, "WIFI"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/analytics/internal/util/NetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/analytics/internal/util/NetState;->bnE:Lcom/xiaomi/analytics/internal/util/NetState;

    new-instance v0, Lcom/xiaomi/analytics/internal/util/NetState;

    const-string/jumbo v1, "MN2G"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/analytics/internal/util/NetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/analytics/internal/util/NetState;->bnG:Lcom/xiaomi/analytics/internal/util/NetState;

    new-instance v0, Lcom/xiaomi/analytics/internal/util/NetState;

    const-string/jumbo v1, "MN3G"

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/analytics/internal/util/NetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/analytics/internal/util/NetState;->bnI:Lcom/xiaomi/analytics/internal/util/NetState;

    new-instance v0, Lcom/xiaomi/analytics/internal/util/NetState;

    const-string/jumbo v1, "MN4G"

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/analytics/internal/util/NetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/analytics/internal/util/NetState;->bnJ:Lcom/xiaomi/analytics/internal/util/NetState;

    new-instance v0, Lcom/xiaomi/analytics/internal/util/NetState;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v6}, Lcom/xiaomi/analytics/internal/util/NetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/analytics/internal/util/NetState;->bnF:Lcom/xiaomi/analytics/internal/util/NetState;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/xiaomi/analytics/internal/util/NetState;

    sget-object v1, Lcom/xiaomi/analytics/internal/util/NetState;->bnE:Lcom/xiaomi/analytics/internal/util/NetState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/analytics/internal/util/NetState;->bnG:Lcom/xiaomi/analytics/internal/util/NetState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/analytics/internal/util/NetState;->bnI:Lcom/xiaomi/analytics/internal/util/NetState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/analytics/internal/util/NetState;->bnJ:Lcom/xiaomi/analytics/internal/util/NetState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/analytics/internal/util/NetState;->bnF:Lcom/xiaomi/analytics/internal/util/NetState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/xiaomi/analytics/internal/util/NetState;->bnH:[Lcom/xiaomi/analytics/internal/util/NetState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/analytics/internal/util/NetState;
    .locals 1

    const-class v0, Lcom/xiaomi/analytics/internal/util/NetState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/analytics/internal/util/NetState;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/analytics/internal/util/NetState;
    .locals 1

    sget-object v0, Lcom/xiaomi/analytics/internal/util/NetState;->bnH:[Lcom/xiaomi/analytics/internal/util/NetState;

    return-object v0
.end method
