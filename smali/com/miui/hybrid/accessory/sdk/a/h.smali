.class public final enum Lcom/miui/hybrid/accessory/sdk/a/h;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/miui/hybrid/accessory/sdk/a/h;

.field private static final synthetic bgH:[Lcom/miui/hybrid/accessory/sdk/a/h;

.field public static final enum bgI:Lcom/miui/hybrid/accessory/sdk/a/h;

.field public static final enum bgJ:Lcom/miui/hybrid/accessory/sdk/a/h;

.field public static final enum bgK:Lcom/miui/hybrid/accessory/sdk/a/h;

.field public static final enum bgL:Lcom/miui/hybrid/accessory/sdk/a/h;

.field public static final enum bgM:Lcom/miui/hybrid/accessory/sdk/a/h;


# instance fields
.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/miui/hybrid/accessory/sdk/a/h;

    const-string/jumbo v1, "OK"

    invoke-direct {v0, v1, v4, v4}, Lcom/miui/hybrid/accessory/sdk/a/h;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/h;->a:Lcom/miui/hybrid/accessory/sdk/a/h;

    new-instance v0, Lcom/miui/hybrid/accessory/sdk/a/h;

    const-string/jumbo v1, "NO_UPDATE"

    invoke-direct {v0, v1, v5, v5}, Lcom/miui/hybrid/accessory/sdk/a/h;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/h;->bgL:Lcom/miui/hybrid/accessory/sdk/a/h;

    new-instance v0, Lcom/miui/hybrid/accessory/sdk/a/h;

    const-string/jumbo v1, "NO_AVAILABLE_PACKAGE"

    invoke-direct {v0, v1, v6, v6}, Lcom/miui/hybrid/accessory/sdk/a/h;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/h;->bgI:Lcom/miui/hybrid/accessory/sdk/a/h;

    new-instance v0, Lcom/miui/hybrid/accessory/sdk/a/h;

    const-string/jumbo v1, "NO_ANY_PACKAGE"

    invoke-direct {v0, v1, v7, v7}, Lcom/miui/hybrid/accessory/sdk/a/h;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/h;->bgJ:Lcom/miui/hybrid/accessory/sdk/a/h;

    new-instance v0, Lcom/miui/hybrid/accessory/sdk/a/h;

    const-string/jumbo v1, "NEED_CHECK_UPDATE"

    invoke-direct {v0, v1, v8, v8}, Lcom/miui/hybrid/accessory/sdk/a/h;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/h;->bgM:Lcom/miui/hybrid/accessory/sdk/a/h;

    new-instance v0, Lcom/miui/hybrid/accessory/sdk/a/h;

    const-string/jumbo v1, "OFFLINE"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/hybrid/accessory/sdk/a/h;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/h;->bgK:Lcom/miui/hybrid/accessory/sdk/a/h;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/miui/hybrid/accessory/sdk/a/h;

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/h;->a:Lcom/miui/hybrid/accessory/sdk/a/h;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/h;->bgL:Lcom/miui/hybrid/accessory/sdk/a/h;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/h;->bgI:Lcom/miui/hybrid/accessory/sdk/a/h;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/h;->bgJ:Lcom/miui/hybrid/accessory/sdk/a/h;

    aput-object v1, v0, v7

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/h;->bgM:Lcom/miui/hybrid/accessory/sdk/a/h;

    aput-object v1, v0, v8

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/h;->bgK:Lcom/miui/hybrid/accessory/sdk/a/h;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/h;->bgH:[Lcom/miui/hybrid/accessory/sdk/a/h;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/miui/hybrid/accessory/sdk/a/h;->g:I

    return-void
.end method

.method public static a(I)Lcom/miui/hybrid/accessory/sdk/a/h;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    sget-object v0, Lcom/miui/hybrid/accessory/sdk/a/h;->a:Lcom/miui/hybrid/accessory/sdk/a/h;

    return-object v0

    :pswitch_1
    sget-object v0, Lcom/miui/hybrid/accessory/sdk/a/h;->bgL:Lcom/miui/hybrid/accessory/sdk/a/h;

    return-object v0

    :pswitch_2
    sget-object v0, Lcom/miui/hybrid/accessory/sdk/a/h;->bgI:Lcom/miui/hybrid/accessory/sdk/a/h;

    return-object v0

    :pswitch_3
    sget-object v0, Lcom/miui/hybrid/accessory/sdk/a/h;->bgJ:Lcom/miui/hybrid/accessory/sdk/a/h;

    return-object v0

    :pswitch_4
    sget-object v0, Lcom/miui/hybrid/accessory/sdk/a/h;->bgM:Lcom/miui/hybrid/accessory/sdk/a/h;

    return-object v0

    :pswitch_5
    sget-object v0, Lcom/miui/hybrid/accessory/sdk/a/h;->bgK:Lcom/miui/hybrid/accessory/sdk/a/h;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/hybrid/accessory/sdk/a/h;
    .locals 1

    const-class v0, Lcom/miui/hybrid/accessory/sdk/a/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/hybrid/accessory/sdk/a/h;

    return-object v0
.end method

.method public static values()[Lcom/miui/hybrid/accessory/sdk/a/h;
    .locals 1

    sget-object v0, Lcom/miui/hybrid/accessory/sdk/a/h;->bgH:[Lcom/miui/hybrid/accessory/sdk/a/h;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/hybrid/accessory/sdk/a/h;

    return-object v0
.end method
