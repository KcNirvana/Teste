.class public final enum Lcom/xiaomi/push/hu;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/push/hu;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/push/hu;

.field private static final synthetic a:[Lcom/xiaomi/push/hu;

.field public static final enum b:Lcom/xiaomi/push/hu;

.field public static final enum c:Lcom/xiaomi/push/hu;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/xiaomi/push/hu;

    const-string v1, "RegIdExpired"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/xiaomi/push/hu;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hu;->a:Lcom/xiaomi/push/hu;

    new-instance v0, Lcom/xiaomi/push/hu;

    const-string v1, "PackageUnregistered"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/xiaomi/push/hu;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hu;->b:Lcom/xiaomi/push/hu;

    new-instance v0, Lcom/xiaomi/push/hu;

    const-string v1, "Init"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/xiaomi/push/hu;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hu;->c:Lcom/xiaomi/push/hu;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/xiaomi/push/hu;

    sget-object v1, Lcom/xiaomi/push/hu;->a:Lcom/xiaomi/push/hu;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hu;->b:Lcom/xiaomi/push/hu;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/push/hu;->c:Lcom/xiaomi/push/hu;

    aput-object v1, v0, v4

    sput-object v0, Lcom/xiaomi/push/hu;->a:[Lcom/xiaomi/push/hu;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/xiaomi/push/hu;->a:I

    return-void
.end method

.method public static a(I)Lcom/xiaomi/push/hu;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/xiaomi/push/hu;->c:Lcom/xiaomi/push/hu;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/xiaomi/push/hu;->b:Lcom/xiaomi/push/hu;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/xiaomi/push/hu;->a:Lcom/xiaomi/push/hu;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/push/hu;
    .locals 1

    const-class v0, Lcom/xiaomi/push/hu;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/push/hu;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/push/hu;
    .locals 1

    sget-object v0, Lcom/xiaomi/push/hu;->a:[Lcom/xiaomi/push/hu;

    invoke-virtual {v0}, [Lcom/xiaomi/push/hu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/push/hu;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/push/hu;->a:I

    return v0
.end method
