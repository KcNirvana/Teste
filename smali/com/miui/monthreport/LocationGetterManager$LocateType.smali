.class public final enum Lcom/miui/monthreport/LocationGetterManager$LocateType;
.super Ljava/lang/Enum;
.source ""


# static fields
.field public static final enum aYN:Lcom/miui/monthreport/LocationGetterManager$LocateType;

.field public static final enum aYO:Lcom/miui/monthreport/LocationGetterManager$LocateType;

.field public static final enum aYP:Lcom/miui/monthreport/LocationGetterManager$LocateType;

.field public static final enum aYQ:Lcom/miui/monthreport/LocationGetterManager$LocateType;

.field private static final synthetic aYR:[Lcom/miui/monthreport/LocationGetterManager$LocateType;


# instance fields
.field private type:Ljava/lang/String;

.field private weight:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/miui/monthreport/LocationGetterManager$LocateType;

    const-string/jumbo v1, "ALL"

    const-string/jumbo v2, "ALL"

    const/4 v3, -0x1

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/miui/monthreport/LocationGetterManager$LocateType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/miui/monthreport/LocationGetterManager$LocateType;->aYN:Lcom/miui/monthreport/LocationGetterManager$LocateType;

    new-instance v0, Lcom/miui/monthreport/LocationGetterManager$LocateType;

    const-string/jumbo v1, "NETWORK_PROVIDER"

    const-string/jumbo v2, "network"

    invoke-direct {v0, v1, v5, v2, v6}, Lcom/miui/monthreport/LocationGetterManager$LocateType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/miui/monthreport/LocationGetterManager$LocateType;->aYP:Lcom/miui/monthreport/LocationGetterManager$LocateType;

    new-instance v0, Lcom/miui/monthreport/LocationGetterManager$LocateType;

    const-string/jumbo v1, "GPS_PROVIDER"

    const-string/jumbo v2, "gps"

    invoke-direct {v0, v1, v6, v2, v5}, Lcom/miui/monthreport/LocationGetterManager$LocateType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/miui/monthreport/LocationGetterManager$LocateType;->aYO:Lcom/miui/monthreport/LocationGetterManager$LocateType;

    new-instance v0, Lcom/miui/monthreport/LocationGetterManager$LocateType;

    const-string/jumbo v1, "PASSIVE_PROVIDER"

    const-string/jumbo v2, "passive"

    invoke-direct {v0, v1, v7, v2, v4}, Lcom/miui/monthreport/LocationGetterManager$LocateType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/miui/monthreport/LocationGetterManager$LocateType;->aYQ:Lcom/miui/monthreport/LocationGetterManager$LocateType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/miui/monthreport/LocationGetterManager$LocateType;

    sget-object v1, Lcom/miui/monthreport/LocationGetterManager$LocateType;->aYN:Lcom/miui/monthreport/LocationGetterManager$LocateType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/monthreport/LocationGetterManager$LocateType;->aYP:Lcom/miui/monthreport/LocationGetterManager$LocateType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/monthreport/LocationGetterManager$LocateType;->aYO:Lcom/miui/monthreport/LocationGetterManager$LocateType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/monthreport/LocationGetterManager$LocateType;->aYQ:Lcom/miui/monthreport/LocationGetterManager$LocateType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/miui/monthreport/LocationGetterManager$LocateType;->aYR:[Lcom/miui/monthreport/LocationGetterManager$LocateType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/miui/monthreport/LocationGetterManager$LocateType;->type:Ljava/lang/String;

    iput p4, p0, Lcom/miui/monthreport/LocationGetterManager$LocateType;->weight:I

    return-void
.end method

.method static synthetic buI(Lcom/miui/monthreport/LocationGetterManager$LocateType;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/monthreport/LocationGetterManager$LocateType;->type:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic buJ(Lcom/miui/monthreport/LocationGetterManager$LocateType;)I
    .locals 1

    iget v0, p0, Lcom/miui/monthreport/LocationGetterManager$LocateType;->weight:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/monthreport/LocationGetterManager$LocateType;
    .locals 1

    const-class v0, Lcom/miui/monthreport/LocationGetterManager$LocateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/monthreport/LocationGetterManager$LocateType;

    return-object v0
.end method

.method public static values()[Lcom/miui/monthreport/LocationGetterManager$LocateType;
    .locals 1

    sget-object v0, Lcom/miui/monthreport/LocationGetterManager$LocateType;->aYR:[Lcom/miui/monthreport/LocationGetterManager$LocateType;

    return-object v0
.end method
