.class final enum Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;
.super Ljava/lang/Enum;
.source ""


# static fields
.field public static final enum aid:Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;

.field public static final enum aie:Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;

.field public static final enum aif:Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;

.field public static final enum aig:Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;

.field public static final enum aih:Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;

.field public static final enum aii:Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;

.field private static final synthetic aij:[Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;


# instance fields
.field private enabled:Z

.field private text:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;

    const-string/jumbo v1, "Continue"

    const v2, 0x7f0707b7

    invoke-direct {v0, v1, v4, v2, v5}, Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;->aif:Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;

    new-instance v0, Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;

    const-string/jumbo v1, "ContinueDisabled"

    const v2, 0x7f0707b7

    invoke-direct {v0, v1, v5, v2, v4}, Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;->aig:Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;

    new-instance v0, Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;

    const-string/jumbo v1, "Confirm"

    const v2, 0x7f0707b8

    invoke-direct {v0, v1, v6, v2, v5}, Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;->aid:Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;

    new-instance v0, Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;

    const-string/jumbo v1, "ConfirmDisabled"

    const v2, 0x7f0707b8

    invoke-direct {v0, v1, v7, v2, v4}, Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;->aie:Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;

    new-instance v0, Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;

    const-string/jumbo v1, "Ok"

    const v2, 0x104000a

    invoke-direct {v0, v1, v8, v2, v5}, Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;->aii:Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;

    new-instance v0, Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;

    const-string/jumbo v1, "Gone"

    const/4 v2, 0x5

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;->aih:Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;

    sget-object v1, Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;->aif:Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;->aig:Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;->aid:Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;->aie:Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;->aii:Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;

    aput-object v1, v0, v8

    sget-object v1, Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;->aih:Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;->aij:[Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;->text:I

    iput-boolean p4, p0, Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;->enabled:Z

    return-void
.end method

.method static synthetic aoJ(Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;->enabled:Z

    return v0
.end method

.method static synthetic aoK(Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;)I
    .locals 1

    iget v0, p0, Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;->text:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;
    .locals 1

    const-class v0, Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;

    return-object v0
.end method

.method public static values()[Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;
    .locals 1

    sget-object v0, Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;->aij:[Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;

    return-object v0
.end method


# virtual methods
.method public aoI(I)V
    .locals 0

    iput p1, p0, Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;->text:I

    return-void
.end method
