.class public final enum Lcom/miui/antivirus/utils/SecurityStatus;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic anU:[Lcom/miui/antivirus/utils/SecurityStatus;

.field public static final enum anV:Lcom/miui/antivirus/utils/SecurityStatus;

.field public static final enum anW:Lcom/miui/antivirus/utils/SecurityStatus;

.field public static final enum anX:Lcom/miui/antivirus/utils/SecurityStatus;

.field public static final enum anY:Lcom/miui/antivirus/utils/SecurityStatus;


# instance fields
.field private mValueId:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/miui/antivirus/utils/SecurityStatus;

    const-string/jumbo v1, "SAFE"

    invoke-direct {v0, v1, v2, v2}, Lcom/miui/antivirus/utils/SecurityStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/antivirus/utils/SecurityStatus;->anY:Lcom/miui/antivirus/utils/SecurityStatus;

    new-instance v0, Lcom/miui/antivirus/utils/SecurityStatus;

    const-string/jumbo v1, "RISK"

    invoke-direct {v0, v1, v3, v3}, Lcom/miui/antivirus/utils/SecurityStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/antivirus/utils/SecurityStatus;->anX:Lcom/miui/antivirus/utils/SecurityStatus;

    new-instance v0, Lcom/miui/antivirus/utils/SecurityStatus;

    const-string/jumbo v1, "DANGER"

    invoke-direct {v0, v1, v4, v4}, Lcom/miui/antivirus/utils/SecurityStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/antivirus/utils/SecurityStatus;->anV:Lcom/miui/antivirus/utils/SecurityStatus;

    new-instance v0, Lcom/miui/antivirus/utils/SecurityStatus;

    const-string/jumbo v1, "INTERRUPT"

    invoke-direct {v0, v1, v5, v5}, Lcom/miui/antivirus/utils/SecurityStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/antivirus/utils/SecurityStatus;->anW:Lcom/miui/antivirus/utils/SecurityStatus;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/miui/antivirus/utils/SecurityStatus;

    sget-object v1, Lcom/miui/antivirus/utils/SecurityStatus;->anY:Lcom/miui/antivirus/utils/SecurityStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/antivirus/utils/SecurityStatus;->anX:Lcom/miui/antivirus/utils/SecurityStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/antivirus/utils/SecurityStatus;->anV:Lcom/miui/antivirus/utils/SecurityStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/antivirus/utils/SecurityStatus;->anW:Lcom/miui/antivirus/utils/SecurityStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/miui/antivirus/utils/SecurityStatus;->anU:[Lcom/miui/antivirus/utils/SecurityStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/miui/antivirus/utils/SecurityStatus;->mValueId:I

    return-void
.end method

.method public static auv(I)Lcom/miui/antivirus/utils/SecurityStatus;
    .locals 5

    invoke-static {}, Lcom/miui/antivirus/utils/SecurityStatus;->values()[Lcom/miui/antivirus/utils/SecurityStatus;

    move-result-object v1

    const/4 v0, 0x0

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/miui/antivirus/utils/SecurityStatus;->getValue()I

    move-result v4

    if-ne p0, v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/miui/antivirus/utils/SecurityStatus;->auw()Lcom/miui/antivirus/utils/SecurityStatus;

    move-result-object v0

    return-object v0
.end method

.method public static auw()Lcom/miui/antivirus/utils/SecurityStatus;
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/miui/antivirus/utils/SecurityStatus;->values()[Lcom/miui/antivirus/utils/SecurityStatus;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/miui/antivirus/utils/SecurityStatus;->getValue()I

    move-result v4

    if-nez v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/antivirus/utils/SecurityStatus;
    .locals 1

    const-class v0, Lcom/miui/antivirus/utils/SecurityStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/utils/SecurityStatus;

    return-object v0
.end method

.method public static values()[Lcom/miui/antivirus/utils/SecurityStatus;
    .locals 1

    sget-object v0, Lcom/miui/antivirus/utils/SecurityStatus;->anU:[Lcom/miui/antivirus/utils/SecurityStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/miui/antivirus/utils/SecurityStatus;->mValueId:I

    return v0
.end method
