.class public final enum Lcom/miui/gamebooster/model/HeaderType;
.super Ljava/lang/Enum;
.source ""


# static fields
.field public static final enum kG:Lcom/miui/gamebooster/model/HeaderType;

.field public static final enum kH:Lcom/miui/gamebooster/model/HeaderType;

.field private static final synthetic kI:[Lcom/miui/gamebooster/model/HeaderType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/miui/gamebooster/model/HeaderType;

    const-string/jumbo v1, "ENABLED"

    invoke-direct {v0, v1, v2}, Lcom/miui/gamebooster/model/HeaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gamebooster/model/HeaderType;->kG:Lcom/miui/gamebooster/model/HeaderType;

    new-instance v0, Lcom/miui/gamebooster/model/HeaderType;

    const-string/jumbo v1, "DISABLED"

    invoke-direct {v0, v1, v3}, Lcom/miui/gamebooster/model/HeaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gamebooster/model/HeaderType;->kH:Lcom/miui/gamebooster/model/HeaderType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/miui/gamebooster/model/HeaderType;

    sget-object v1, Lcom/miui/gamebooster/model/HeaderType;->kG:Lcom/miui/gamebooster/model/HeaderType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/gamebooster/model/HeaderType;->kH:Lcom/miui/gamebooster/model/HeaderType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/gamebooster/model/HeaderType;->kI:[Lcom/miui/gamebooster/model/HeaderType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gamebooster/model/HeaderType;
    .locals 1

    const-class v0, Lcom/miui/gamebooster/model/HeaderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/model/HeaderType;

    return-object v0
.end method

.method public static values()[Lcom/miui/gamebooster/model/HeaderType;
    .locals 1

    sget-object v0, Lcom/miui/gamebooster/model/HeaderType;->kI:[Lcom/miui/gamebooster/model/HeaderType;

    return-object v0
.end method
