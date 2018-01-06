.class public abstract enum Lcom/a/a/ae;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/a/a/ae;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/a/a/ae;

.field public static final enum b:Lcom/a/a/ae;

.field private static final synthetic c:[Lcom/a/a/ae;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/a/a/af;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/a/a/af;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/ae;->a:Lcom/a/a/ae;

    new-instance v0, Lcom/a/a/ag;

    const-string v1, "STRING"

    invoke-direct {v0, v1, v3}, Lcom/a/a/ag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/ae;->b:Lcom/a/a/ae;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/a/a/ae;

    sget-object v1, Lcom/a/a/ae;->a:Lcom/a/a/ae;

    aput-object v1, v0, v2

    sget-object v1, Lcom/a/a/ae;->b:Lcom/a/a/ae;

    aput-object v1, v0, v3

    sput-object v0, Lcom/a/a/ae;->c:[Lcom/a/a/ae;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/a/a/af;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/a/a/ae;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/a/a/ae;
    .locals 1

    const-class v0, Lcom/a/a/ae;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/a/a/ae;

    return-object v0
.end method

.method public static values()[Lcom/a/a/ae;
    .locals 1

    sget-object v0, Lcom/a/a/ae;->c:[Lcom/a/a/ae;

    invoke-virtual {v0}, [Lcom/a/a/ae;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/a/a/ae;

    return-object v0
.end method
