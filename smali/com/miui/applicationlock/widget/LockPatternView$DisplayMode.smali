.class public final enum Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;
.super Ljava/lang/Enum;
.source ""


# static fields
.field public static final enum ado:Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;

.field public static final enum adp:Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;

.field public static final enum adq:Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;

.field private static final synthetic adr:[Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;

    const-string/jumbo v1, "Correct"

    invoke-direct {v0, v1, v2}, Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;->adp:Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;

    new-instance v0, Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;

    const-string/jumbo v1, "Animate"

    invoke-direct {v0, v1, v3}, Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;->ado:Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;

    new-instance v0, Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;

    const-string/jumbo v1, "Wrong"

    invoke-direct {v0, v1, v4}, Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;->adq:Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;

    sget-object v1, Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;->adp:Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;->ado:Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;->adq:Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;->adr:[Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;
    .locals 1

    const-class v0, Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;

    return-object v0
.end method

.method public static values()[Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;
    .locals 1

    sget-object v0, Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;->adr:[Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;

    return-object v0
.end method
