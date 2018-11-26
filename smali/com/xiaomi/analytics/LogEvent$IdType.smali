.class public final enum Lcom/xiaomi/analytics/LogEvent$IdType;
.super Ljava/lang/Enum;
.source ""


# static fields
.field public static final enum TYPE_AAID:Lcom/xiaomi/analytics/LogEvent$IdType;

.field public static final enum TYPE_ANDROID_ID:Lcom/xiaomi/analytics/LogEvent$IdType;

.field public static final enum TYPE_DEFAULT:Lcom/xiaomi/analytics/LogEvent$IdType;

.field public static final enum TYPE_GAID:Lcom/xiaomi/analytics/LogEvent$IdType;

.field public static final enum TYPE_GUID:Lcom/xiaomi/analytics/LogEvent$IdType;

.field public static final enum TYPE_IMEI:Lcom/xiaomi/analytics/LogEvent$IdType;

.field public static final enum TYPE_MAC:Lcom/xiaomi/analytics/LogEvent$IdType;

.field private static final synthetic bpb:[Lcom/xiaomi/analytics/LogEvent$IdType;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/xiaomi/analytics/LogEvent$IdType;

    const-string/jumbo v1, "TYPE_DEFAULT"

    invoke-direct {v0, v1, v4, v4}, Lcom/xiaomi/analytics/LogEvent$IdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/analytics/LogEvent$IdType;->TYPE_DEFAULT:Lcom/xiaomi/analytics/LogEvent$IdType;

    new-instance v0, Lcom/xiaomi/analytics/LogEvent$IdType;

    const-string/jumbo v1, "TYPE_IMEI"

    invoke-direct {v0, v1, v5, v5}, Lcom/xiaomi/analytics/LogEvent$IdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/analytics/LogEvent$IdType;->TYPE_IMEI:Lcom/xiaomi/analytics/LogEvent$IdType;

    new-instance v0, Lcom/xiaomi/analytics/LogEvent$IdType;

    const-string/jumbo v1, "TYPE_MAC"

    invoke-direct {v0, v1, v6, v6}, Lcom/xiaomi/analytics/LogEvent$IdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/analytics/LogEvent$IdType;->TYPE_MAC:Lcom/xiaomi/analytics/LogEvent$IdType;

    new-instance v0, Lcom/xiaomi/analytics/LogEvent$IdType;

    const-string/jumbo v1, "TYPE_ANDROID_ID"

    invoke-direct {v0, v1, v7, v7}, Lcom/xiaomi/analytics/LogEvent$IdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/analytics/LogEvent$IdType;->TYPE_ANDROID_ID:Lcom/xiaomi/analytics/LogEvent$IdType;

    new-instance v0, Lcom/xiaomi/analytics/LogEvent$IdType;

    const-string/jumbo v1, "TYPE_AAID"

    invoke-direct {v0, v1, v8, v8}, Lcom/xiaomi/analytics/LogEvent$IdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/analytics/LogEvent$IdType;->TYPE_AAID:Lcom/xiaomi/analytics/LogEvent$IdType;

    new-instance v0, Lcom/xiaomi/analytics/LogEvent$IdType;

    const-string/jumbo v1, "TYPE_GAID"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/analytics/LogEvent$IdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/analytics/LogEvent$IdType;->TYPE_GAID:Lcom/xiaomi/analytics/LogEvent$IdType;

    new-instance v0, Lcom/xiaomi/analytics/LogEvent$IdType;

    const-string/jumbo v1, "TYPE_GUID"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/analytics/LogEvent$IdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/analytics/LogEvent$IdType;->TYPE_GUID:Lcom/xiaomi/analytics/LogEvent$IdType;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/xiaomi/analytics/LogEvent$IdType;

    sget-object v1, Lcom/xiaomi/analytics/LogEvent$IdType;->TYPE_DEFAULT:Lcom/xiaomi/analytics/LogEvent$IdType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/analytics/LogEvent$IdType;->TYPE_IMEI:Lcom/xiaomi/analytics/LogEvent$IdType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/analytics/LogEvent$IdType;->TYPE_MAC:Lcom/xiaomi/analytics/LogEvent$IdType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/analytics/LogEvent$IdType;->TYPE_ANDROID_ID:Lcom/xiaomi/analytics/LogEvent$IdType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaomi/analytics/LogEvent$IdType;->TYPE_AAID:Lcom/xiaomi/analytics/LogEvent$IdType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/xiaomi/analytics/LogEvent$IdType;->TYPE_GAID:Lcom/xiaomi/analytics/LogEvent$IdType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/analytics/LogEvent$IdType;->TYPE_GUID:Lcom/xiaomi/analytics/LogEvent$IdType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/xiaomi/analytics/LogEvent$IdType;->bpb:[Lcom/xiaomi/analytics/LogEvent$IdType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/analytics/LogEvent$IdType;->mValue:I

    iput p3, p0, Lcom/xiaomi/analytics/LogEvent$IdType;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/analytics/LogEvent$IdType;
    .locals 1

    const-class v0, Lcom/xiaomi/analytics/LogEvent$IdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/analytics/LogEvent$IdType;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/analytics/LogEvent$IdType;
    .locals 1

    sget-object v0, Lcom/xiaomi/analytics/LogEvent$IdType;->bpb:[Lcom/xiaomi/analytics/LogEvent$IdType;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/analytics/LogEvent$IdType;->mValue:I

    return v0
.end method
