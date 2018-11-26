.class public final enum Lcom/miui/applicationlock/utils/HeaderType;
.super Ljava/lang/Enum;
.source ""


# static fields
.field public static final enum abr:Lcom/miui/applicationlock/utils/HeaderType;

.field public static final enum abs:Lcom/miui/applicationlock/utils/HeaderType;

.field private static final synthetic abt:[Lcom/miui/applicationlock/utils/HeaderType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/miui/applicationlock/utils/HeaderType;

    const-string/jumbo v1, "ENABLED"

    invoke-direct {v0, v1, v2}, Lcom/miui/applicationlock/utils/HeaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/applicationlock/utils/HeaderType;->abr:Lcom/miui/applicationlock/utils/HeaderType;

    new-instance v0, Lcom/miui/applicationlock/utils/HeaderType;

    const-string/jumbo v1, "DISABLED"

    invoke-direct {v0, v1, v3}, Lcom/miui/applicationlock/utils/HeaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/applicationlock/utils/HeaderType;->abs:Lcom/miui/applicationlock/utils/HeaderType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/miui/applicationlock/utils/HeaderType;

    sget-object v1, Lcom/miui/applicationlock/utils/HeaderType;->abr:Lcom/miui/applicationlock/utils/HeaderType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/applicationlock/utils/HeaderType;->abs:Lcom/miui/applicationlock/utils/HeaderType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/applicationlock/utils/HeaderType;->abt:[Lcom/miui/applicationlock/utils/HeaderType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/applicationlock/utils/HeaderType;
    .locals 1

    const-class v0, Lcom/miui/applicationlock/utils/HeaderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/utils/HeaderType;

    return-object v0
.end method

.method public static values()[Lcom/miui/applicationlock/utils/HeaderType;
    .locals 1

    sget-object v0, Lcom/miui/applicationlock/utils/HeaderType;->abt:[Lcom/miui/applicationlock/utils/HeaderType;

    return-object v0
.end method
