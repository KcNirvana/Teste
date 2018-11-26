.class public final enum Lcom/miui/antivirus/ui/StateButton$State;
.super Ljava/lang/Enum;
.source ""


# static fields
.field public static final enum apv:Lcom/miui/antivirus/ui/StateButton$State;

.field public static final enum apw:Lcom/miui/antivirus/ui/StateButton$State;

.field public static final enum apx:Lcom/miui/antivirus/ui/StateButton$State;

.field private static final synthetic apy:[Lcom/miui/antivirus/ui/StateButton$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/miui/antivirus/ui/StateButton$State;

    const-string/jumbo v1, "UNCHECKED"

    invoke-direct {v0, v1, v2}, Lcom/miui/antivirus/ui/StateButton$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/antivirus/ui/StateButton$State;->apx:Lcom/miui/antivirus/ui/StateButton$State;

    new-instance v0, Lcom/miui/antivirus/ui/StateButton$State;

    const-string/jumbo v1, "MIDDLE"

    invoke-direct {v0, v1, v3}, Lcom/miui/antivirus/ui/StateButton$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/antivirus/ui/StateButton$State;->apw:Lcom/miui/antivirus/ui/StateButton$State;

    new-instance v0, Lcom/miui/antivirus/ui/StateButton$State;

    const-string/jumbo v1, "CHECKED"

    invoke-direct {v0, v1, v4}, Lcom/miui/antivirus/ui/StateButton$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/antivirus/ui/StateButton$State;->apv:Lcom/miui/antivirus/ui/StateButton$State;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/miui/antivirus/ui/StateButton$State;

    sget-object v1, Lcom/miui/antivirus/ui/StateButton$State;->apx:Lcom/miui/antivirus/ui/StateButton$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/antivirus/ui/StateButton$State;->apw:Lcom/miui/antivirus/ui/StateButton$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/antivirus/ui/StateButton$State;->apv:Lcom/miui/antivirus/ui/StateButton$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/miui/antivirus/ui/StateButton$State;->apy:[Lcom/miui/antivirus/ui/StateButton$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/antivirus/ui/StateButton$State;
    .locals 1

    const-class v0, Lcom/miui/antivirus/ui/StateButton$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/ui/StateButton$State;

    return-object v0
.end method

.method public static values()[Lcom/miui/antivirus/ui/StateButton$State;
    .locals 1

    sget-object v0, Lcom/miui/antivirus/ui/StateButton$State;->apy:[Lcom/miui/antivirus/ui/StateButton$State;

    return-object v0
.end method
