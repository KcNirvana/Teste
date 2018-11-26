.class final enum Lcom/miui/applicationlock/ChooseAccessControl$Stage;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic aik:[Lcom/miui/applicationlock/ChooseAccessControl$Stage;

.field public static final enum ail:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

.field public static final enum aim:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

.field public static final enum ain:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

.field public static final enum aio:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

.field public static final enum aip:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

.field public static final enum aiq:Lcom/miui/applicationlock/ChooseAccessControl$Stage;


# instance fields
.field final footerMessage:I

.field headerMessage:I

.field leftMode:Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;

.field final patternEnabled:Z

.field rightMode:Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    const-string/jumbo v1, "Introduction"

    sget-object v4, Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;->ahX:Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;

    sget-object v5, Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;->aih:Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;

    const/4 v2, 0x0

    const v3, 0x7f0707d7

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/miui/applicationlock/ChooseAccessControl$Stage;-><init>(Ljava/lang/String;IILcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;IZ)V

    sput-object v0, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->aip:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    new-instance v0, Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    const-string/jumbo v1, "ChoiceTooShort"

    sget-object v4, Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;->ahX:Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;

    sget-object v5, Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;->aih:Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;

    const/4 v2, 0x1

    const v3, 0x7f0707d4

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/miui/applicationlock/ChooseAccessControl$Stage;-><init>(Ljava/lang/String;IILcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;IZ)V

    sput-object v0, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->aim:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    new-instance v0, Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    const-string/jumbo v1, "FirstChoiceValid"

    sget-object v4, Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;->ahX:Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;

    sget-object v5, Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;->aih:Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;

    const/4 v2, 0x2

    const v3, 0x7f0707da

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/miui/applicationlock/ChooseAccessControl$Stage;-><init>(Ljava/lang/String;IILcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;IZ)V

    sput-object v0, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->aio:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    new-instance v0, Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    const-string/jumbo v1, "NeedToConfirm"

    sget-object v4, Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;->ahY:Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;

    sget-object v5, Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;->aie:Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;

    const/4 v2, 0x3

    const v3, 0x7f0707dd

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/miui/applicationlock/ChooseAccessControl$Stage;-><init>(Ljava/lang/String;IILcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;IZ)V

    sput-object v0, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->aiq:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    new-instance v0, Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    const-string/jumbo v1, "ConfirmWrong"

    sget-object v4, Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;->ahY:Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;

    sget-object v5, Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;->aie:Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;

    const/4 v2, 0x4

    const v3, 0x7f0707e3

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/miui/applicationlock/ChooseAccessControl$Stage;-><init>(Ljava/lang/String;IILcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;IZ)V

    sput-object v0, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->ain:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    new-instance v0, Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    const-string/jumbo v1, "ChoiceConfirmed"

    sget-object v4, Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;->ahY:Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;

    sget-object v5, Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;->aid:Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;

    const/4 v2, 0x5

    const v3, 0x7f0707e5

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/miui/applicationlock/ChooseAccessControl$Stage;-><init>(Ljava/lang/String;IILcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;IZ)V

    sput-object v0, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->ail:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    sget-object v1, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->aip:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->aim:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->aio:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->aiq:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->ain:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->ail:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->aik:[Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->headerMessage:I

    iput-object p4, p0, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->leftMode:Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;

    iput-object p5, p0, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->rightMode:Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;

    iput p6, p0, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->footerMessage:I

    iput-boolean p7, p0, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->patternEnabled:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/applicationlock/ChooseAccessControl$Stage;
    .locals 1

    const-class v0, Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    return-object v0
.end method

.method public static values()[Lcom/miui/applicationlock/ChooseAccessControl$Stage;
    .locals 1

    sget-object v0, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->aik:[Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    return-object v0
.end method


# virtual methods
.method public aoL(I)V
    .locals 0

    iput p1, p0, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->headerMessage:I

    return-void
.end method

.method public aoM(Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->leftMode:Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;

    return-void
.end method

.method public aoN(Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->rightMode:Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;

    return-void
.end method
