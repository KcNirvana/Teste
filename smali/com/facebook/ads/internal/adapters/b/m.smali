.class public Lcom/facebook/ads/internal/adapters/b/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/adapters/b/m$a;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4e149b77709aff0L


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/facebook/ads/internal/adapters/b/m$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/facebook/ads/internal/adapters/b/m$a;->a(Lcom/facebook/ads/internal/adapters/b/m$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/b/m;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/facebook/ads/internal/adapters/b/m$a;->b(Lcom/facebook/ads/internal/adapters/b/m$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/b/m;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/facebook/ads/internal/adapters/b/m$a;->c(Lcom/facebook/ads/internal/adapters/b/m$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/b/m;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/facebook/ads/internal/adapters/b/m$a;->d(Lcom/facebook/ads/internal/adapters/b/m$a;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/b/m;->d:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/ads/internal/adapters/b/m$a;Lcom/facebook/ads/internal/adapters/b/m$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/adapters/b/m;-><init>(Lcom/facebook/ads/internal/adapters/b/m$a;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/b/m;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/b/m;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/b/m;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/b/m;->d:Ljava/lang/String;

    return-object v0
.end method
