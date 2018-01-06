.class public final enum Lcom/xiaomi/j/a/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/j/a/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/j/a/b;

.field public static final enum b:Lcom/xiaomi/j/a/b;

.field private static final synthetic d:[Lcom/xiaomi/j/a/b;


# instance fields
.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/xiaomi/j/a/b;

    const-string v1, "START"

    invoke-direct {v0, v1, v2, v2}, Lcom/xiaomi/j/a/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/j/a/b;->a:Lcom/xiaomi/j/a/b;

    new-instance v0, Lcom/xiaomi/j/a/b;

    const-string v1, "BIND"

    invoke-direct {v0, v1, v3, v3}, Lcom/xiaomi/j/a/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/j/a/b;->b:Lcom/xiaomi/j/a/b;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/xiaomi/j/a/b;

    sget-object v1, Lcom/xiaomi/j/a/b;->a:Lcom/xiaomi/j/a/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/j/a/b;->b:Lcom/xiaomi/j/a/b;

    aput-object v1, v0, v3

    sput-object v0, Lcom/xiaomi/j/a/b;->d:[Lcom/xiaomi/j/a/b;

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

    iput p3, p0, Lcom/xiaomi/j/a/b;->c:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/j/a/b;
    .locals 1

    const-class v0, Lcom/xiaomi/j/a/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/j/a/b;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/j/a/b;
    .locals 1

    sget-object v0, Lcom/xiaomi/j/a/b;->d:[Lcom/xiaomi/j/a/b;

    invoke-virtual {v0}, [Lcom/xiaomi/j/a/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/j/a/b;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/j/a/b;->c:I

    return v0
.end method
