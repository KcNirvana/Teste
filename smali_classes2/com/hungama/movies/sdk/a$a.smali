.class public final enum Lcom/hungama/movies/sdk/a$a;
.super Ljava/lang/Enum;
.source "HungamaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hungama/movies/sdk/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hungama/movies/sdk/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/hungama/movies/sdk/a$a;

.field public static final enum b:Lcom/hungama/movies/sdk/a$a;

.field public static final enum c:Lcom/hungama/movies/sdk/a$a;

.field private static final synthetic d:[Lcom/hungama/movies/sdk/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/hungama/movies/sdk/a$a;

    const-string v1, "DRM_INITIALIZATION_FAILED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hungama/movies/sdk/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hungama/movies/sdk/a$a;->a:Lcom/hungama/movies/sdk/a$a;

    new-instance v0, Lcom/hungama/movies/sdk/a$a;

    const-string v1, "NETWORK_UNAVAILABLE_ONPLAY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hungama/movies/sdk/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hungama/movies/sdk/a$a;->b:Lcom/hungama/movies/sdk/a$a;

    new-instance v0, Lcom/hungama/movies/sdk/a$a;

    const-string v1, "NO_INITIAL_NETWORK"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/hungama/movies/sdk/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hungama/movies/sdk/a$a;->c:Lcom/hungama/movies/sdk/a$a;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/hungama/movies/sdk/a$a;

    sget-object v1, Lcom/hungama/movies/sdk/a$a;->a:Lcom/hungama/movies/sdk/a$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/hungama/movies/sdk/a$a;->b:Lcom/hungama/movies/sdk/a$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/hungama/movies/sdk/a$a;->c:Lcom/hungama/movies/sdk/a$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/hungama/movies/sdk/a$a;->d:[Lcom/hungama/movies/sdk/a$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hungama/movies/sdk/a$a;
    .locals 1

    const-class v0, Lcom/hungama/movies/sdk/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hungama/movies/sdk/a$a;

    return-object p0
.end method

.method public static values()[Lcom/hungama/movies/sdk/a$a;
    .locals 1

    sget-object v0, Lcom/hungama/movies/sdk/a$a;->d:[Lcom/hungama/movies/sdk/a$a;

    invoke-virtual {v0}, [Lcom/hungama/movies/sdk/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hungama/movies/sdk/a$a;

    return-object v0
.end method
