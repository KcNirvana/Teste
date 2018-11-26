.class public final enum Lcom/miui/hybrid/accessory/sdk/a/c;
.super Ljava/lang/Enum;


# static fields
.field public static final enum bgA:Lcom/miui/hybrid/accessory/sdk/a/c;

.field public static final enum bgB:Lcom/miui/hybrid/accessory/sdk/a/c;

.field public static final enum bgw:Lcom/miui/hybrid/accessory/sdk/a/c;

.field private static final synthetic bgx:[Lcom/miui/hybrid/accessory/sdk/a/c;

.field public static final enum bgy:Lcom/miui/hybrid/accessory/sdk/a/c;

.field public static final enum bgz:Lcom/miui/hybrid/accessory/sdk/a/c;


# instance fields
.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-instance v0, Lcom/miui/hybrid/accessory/sdk/a/c;

    const-string/jumbo v1, "Beta"

    invoke-direct {v0, v1, v7, v3}, Lcom/miui/hybrid/accessory/sdk/a/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/c;->bgA:Lcom/miui/hybrid/accessory/sdk/a/c;

    new-instance v0, Lcom/miui/hybrid/accessory/sdk/a/c;

    const-string/jumbo v1, "Auditing"

    invoke-direct {v0, v1, v3, v4}, Lcom/miui/hybrid/accessory/sdk/a/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/c;->bgB:Lcom/miui/hybrid/accessory/sdk/a/c;

    new-instance v0, Lcom/miui/hybrid/accessory/sdk/a/c;

    const-string/jumbo v1, "Rejected"

    invoke-direct {v0, v1, v4, v5}, Lcom/miui/hybrid/accessory/sdk/a/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/c;->bgy:Lcom/miui/hybrid/accessory/sdk/a/c;

    new-instance v0, Lcom/miui/hybrid/accessory/sdk/a/c;

    const-string/jumbo v1, "Online"

    invoke-direct {v0, v1, v5, v6}, Lcom/miui/hybrid/accessory/sdk/a/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/c;->bgw:Lcom/miui/hybrid/accessory/sdk/a/c;

    new-instance v0, Lcom/miui/hybrid/accessory/sdk/a/c;

    const-string/jumbo v1, "Offline"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v2}, Lcom/miui/hybrid/accessory/sdk/a/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/c;->bgz:Lcom/miui/hybrid/accessory/sdk/a/c;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/miui/hybrid/accessory/sdk/a/c;

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/c;->bgA:Lcom/miui/hybrid/accessory/sdk/a/c;

    aput-object v1, v0, v7

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/c;->bgB:Lcom/miui/hybrid/accessory/sdk/a/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/c;->bgy:Lcom/miui/hybrid/accessory/sdk/a/c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/c;->bgw:Lcom/miui/hybrid/accessory/sdk/a/c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/c;->bgz:Lcom/miui/hybrid/accessory/sdk/a/c;

    aput-object v1, v0, v6

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/c;->bgx:[Lcom/miui/hybrid/accessory/sdk/a/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/miui/hybrid/accessory/sdk/a/c;->f:I

    return-void
.end method

.method public static a(I)Lcom/miui/hybrid/accessory/sdk/a/c;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    sget-object v0, Lcom/miui/hybrid/accessory/sdk/a/c;->bgA:Lcom/miui/hybrid/accessory/sdk/a/c;

    return-object v0

    :pswitch_1
    sget-object v0, Lcom/miui/hybrid/accessory/sdk/a/c;->bgB:Lcom/miui/hybrid/accessory/sdk/a/c;

    return-object v0

    :pswitch_2
    sget-object v0, Lcom/miui/hybrid/accessory/sdk/a/c;->bgy:Lcom/miui/hybrid/accessory/sdk/a/c;

    return-object v0

    :pswitch_3
    sget-object v0, Lcom/miui/hybrid/accessory/sdk/a/c;->bgw:Lcom/miui/hybrid/accessory/sdk/a/c;

    return-object v0

    :pswitch_4
    sget-object v0, Lcom/miui/hybrid/accessory/sdk/a/c;->bgz:Lcom/miui/hybrid/accessory/sdk/a/c;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/hybrid/accessory/sdk/a/c;
    .locals 1

    const-class v0, Lcom/miui/hybrid/accessory/sdk/a/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/hybrid/accessory/sdk/a/c;

    return-object v0
.end method

.method public static values()[Lcom/miui/hybrid/accessory/sdk/a/c;
    .locals 1

    sget-object v0, Lcom/miui/hybrid/accessory/sdk/a/c;->bgx:[Lcom/miui/hybrid/accessory/sdk/a/c;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/hybrid/accessory/sdk/a/c;

    return-object v0
.end method
