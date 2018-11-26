.class public final enum Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;
.super Ljava/lang/Enum;
.source ""


# static fields
.field public static final enum NO:Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;

.field public static final enum USER:Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;

.field private static final synthetic bpl:[Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;

    const-string/jumbo v1, "NO"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;->NO:Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;

    new-instance v0, Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;

    const-string/jumbo v1, "USER"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;->USER:Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;

    sget-object v1, Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;->NO:Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;->USER:Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;

    aput-object v1, v0, v3

    sput-object v0, Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;->bpl:[Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;
    .locals 1

    const-class v0, Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;
    .locals 1

    sget-object v0, Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;->bpl:[Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;

    return-object v0
.end method
