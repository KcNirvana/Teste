.class public final enum Lcom/xiaomi/j/a/i;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/j/a/i;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/j/a/i;

.field public static final enum b:Lcom/xiaomi/j/a/i;

.field private static final synthetic d:[Lcom/xiaomi/j/a/i;


# instance fields
.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Lcom/xiaomi/j/a/i;

    const-string v1, "MISC_CONFIG"

    invoke-direct {v0, v1, v3, v2}, Lcom/xiaomi/j/a/i;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/j/a/i;->a:Lcom/xiaomi/j/a/i;

    new-instance v0, Lcom/xiaomi/j/a/i;

    const-string v1, "PLUGIN_CONFIG"

    invoke-direct {v0, v1, v2, v4}, Lcom/xiaomi/j/a/i;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/j/a/i;->b:Lcom/xiaomi/j/a/i;

    new-array v0, v4, [Lcom/xiaomi/j/a/i;

    sget-object v1, Lcom/xiaomi/j/a/i;->a:Lcom/xiaomi/j/a/i;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/j/a/i;->b:Lcom/xiaomi/j/a/i;

    aput-object v1, v0, v2

    sput-object v0, Lcom/xiaomi/j/a/i;->d:[Lcom/xiaomi/j/a/i;

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

    iput p3, p0, Lcom/xiaomi/j/a/i;->c:I

    return-void
.end method

.method public static a(I)Lcom/xiaomi/j/a/i;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/xiaomi/j/a/i;->a:Lcom/xiaomi/j/a/i;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/xiaomi/j/a/i;->b:Lcom/xiaomi/j/a/i;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/j/a/i;
    .locals 1

    const-class v0, Lcom/xiaomi/j/a/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/j/a/i;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/j/a/i;
    .locals 1

    sget-object v0, Lcom/xiaomi/j/a/i;->d:[Lcom/xiaomi/j/a/i;

    invoke-virtual {v0}, [Lcom/xiaomi/j/a/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/j/a/i;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/j/a/i;->c:I

    return v0
.end method
