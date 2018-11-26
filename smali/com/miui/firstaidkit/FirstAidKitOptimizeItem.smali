.class public final enum Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic um:[Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;

.field public static final enum un:Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;

.field public static final enum uo:Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;

.field public static final enum up:Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;

.field public static final enum uq:Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;

.field public static final enum ur:Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;


# instance fields
.field private titleId:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;

    const-string/jumbo v1, "PERFORMANCE"

    const v2, 0x7f0709b2

    invoke-direct {v0, v1, v3, v2}, Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;->ur:Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;

    new-instance v0, Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;

    const-string/jumbo v1, "INTERNET"

    const v2, 0x7f0709b3

    invoke-direct {v0, v1, v4, v2}, Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;->uo:Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;

    new-instance v0, Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;

    const-string/jumbo v1, "OPERATION"

    const v2, 0x7f0709b4

    invoke-direct {v0, v1, v5, v2}, Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;->up:Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;

    new-instance v0, Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;

    const-string/jumbo v1, "CONSUME_POWER"

    const v2, 0x7f0709b5

    invoke-direct {v0, v1, v6, v2}, Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;->un:Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;

    new-instance v0, Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;

    const-string/jumbo v1, "OTHER"

    const v2, 0x7f0709b6

    invoke-direct {v0, v1, v7, v2}, Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;->uq:Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;

    sget-object v1, Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;->ur:Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;->uo:Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;->up:Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;->un:Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;->uq:Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;

    aput-object v1, v0, v7

    sput-object v0, Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;->um:[Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;->titleId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;
    .locals 1

    const-class v0, Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;

    return-object v0
.end method

.method public static values()[Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;
    .locals 1

    sget-object v0, Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;->um:[Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;

    return-object v0
.end method
