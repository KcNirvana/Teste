.class public final enum Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic cp:[Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;

.field public static final enum cq:Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;

.field public static final enum cr:Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;

.field public static final enum cs:Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;

    const-string/jumbo v1, "RECOMMENDATION"

    invoke-direct {v0, v1, v2}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;->cs:Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;

    new-instance v0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;

    const-string/jumbo v1, "RANK"

    invoke-direct {v0, v1, v3}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;->cr:Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;

    new-instance v0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;

    const-string/jumbo v1, "MINE"

    invoke-direct {v0, v1, v4}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;->cq:Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;

    sget-object v1, Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;->cs:Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;->cr:Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;->cq:Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;->cp:[Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static dZ(I)Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;
    .locals 3

    sget-object v0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;->cs:Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;

    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;->ordinal()I

    move-result v0

    if-ne v0, p0, :cond_0

    sget-object v0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;->cs:Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;

    return-object v0

    :cond_0
    sget-object v0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;->cr:Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;

    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;->ordinal()I

    move-result v0

    if-ne v0, p0, :cond_1

    sget-object v0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;->cr:Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;

    return-object v0

    :cond_1
    sget-object v0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;->cq:Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;

    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;->ordinal()I

    move-result v0

    if-ne v0, p0, :cond_2

    sget-object v0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;->cq:Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid value for tab state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;
    .locals 1

    const-class v0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;

    return-object v0
.end method

.method public static values()[Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;
    .locals 1

    sget-object v0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;->cp:[Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;

    return-object v0
.end method
