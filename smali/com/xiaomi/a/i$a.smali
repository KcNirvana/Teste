.class public final enum Lcom/xiaomi/a/i$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/a/i$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/a/i$a;

.field public static final enum b:Lcom/xiaomi/a/i$a;

.field private static final synthetic d:[Lcom/xiaomi/a/i$a;


# instance fields
.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/xiaomi/a/i$a;

    const-string v1, "TYPE_EVENT"

    invoke-direct {v0, v1, v2, v2}, Lcom/xiaomi/a/i$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/a/i$a;->a:Lcom/xiaomi/a/i$a;

    new-instance v0, Lcom/xiaomi/a/i$a;

    const-string v1, "TYPE_AD"

    invoke-direct {v0, v1, v3, v3}, Lcom/xiaomi/a/i$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/a/i$a;->b:Lcom/xiaomi/a/i$a;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/xiaomi/a/i$a;

    sget-object v1, Lcom/xiaomi/a/i$a;->a:Lcom/xiaomi/a/i$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/a/i$a;->b:Lcom/xiaomi/a/i$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/xiaomi/a/i$a;->d:[Lcom/xiaomi/a/i$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/a/i$a;->c:I

    iput p3, p0, Lcom/xiaomi/a/i$a;->c:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/a/i$a;
    .locals 1

    const-class v0, Lcom/xiaomi/a/i$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/a/i$a;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/a/i$a;
    .locals 1

    sget-object v0, Lcom/xiaomi/a/i$a;->d:[Lcom/xiaomi/a/i$a;

    invoke-virtual {v0}, [Lcom/xiaomi/a/i$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/a/i$a;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/a/i$a;->c:I

    return v0
.end method
