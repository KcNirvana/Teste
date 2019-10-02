.class public Lcom/hungama/movies/sdk/c/a;
.super Ljava/lang/Object;
.source "CMSdk.java"


# static fields
.field private static a:Lcom/hungama/movies/sdk/c/a;


# instance fields
.field private b:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hungama/movies/sdk/c/a;->b:Z

    return-void
.end method

.method public static a()Lcom/hungama/movies/sdk/c/a;
    .locals 1

    sget-object v0, Lcom/hungama/movies/sdk/c/a;->a:Lcom/hungama/movies/sdk/c/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/hungama/movies/sdk/c/a;

    invoke-direct {v0}, Lcom/hungama/movies/sdk/c/a;-><init>()V

    sput-object v0, Lcom/hungama/movies/sdk/c/a;->a:Lcom/hungama/movies/sdk/c/a;

    :cond_0
    sget-object v0, Lcom/hungama/movies/sdk/c/a;->a:Lcom/hungama/movies/sdk/c/a;

    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/hungama/movies/sdk/c/a;->a:Lcom/hungama/movies/sdk/c/a;

    return-void
.end method
