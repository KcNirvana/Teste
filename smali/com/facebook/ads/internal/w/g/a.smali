.class public Lcom/facebook/ads/internal/w/g/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/w/g/a$a;
    }
.end annotation


# static fields
.field private static a:Lcom/facebook/ads/internal/w/g/a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final b:Lcom/facebook/ads/internal/w/g/b;

.field private final c:Lcom/facebook/ads/internal/w/g/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ThreadPoolExecutor;Lcom/facebook/ads/internal/m/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/facebook/ads/internal/w/g/b;

    invoke-direct {v0, p1}, Lcom/facebook/ads/internal/w/g/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/w/g/a;->b:Lcom/facebook/ads/internal/w/g/b;

    new-instance v0, Lcom/facebook/ads/internal/w/g/a$a;

    invoke-direct {v0, p2, p3, p1}, Lcom/facebook/ads/internal/w/g/a$a;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;Lcom/facebook/ads/internal/m/c;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/w/g/a;->c:Lcom/facebook/ads/internal/w/g/a$a;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/concurrent/ThreadPoolExecutor;Lcom/facebook/ads/internal/m/c;)V
    .locals 1

    invoke-static {p0}, Lcom/facebook/ads/internal/r/a;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/facebook/ads/internal/w/g/a;->a:Lcom/facebook/ads/internal/w/g/a;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/facebook/ads/internal/w/g/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/ads/internal/w/g/a;-><init>(Landroid/content/Context;Ljava/util/concurrent/ThreadPoolExecutor;Lcom/facebook/ads/internal/m/c;)V

    sput-object v0, Lcom/facebook/ads/internal/w/g/a;->a:Lcom/facebook/ads/internal/w/g/a;

    sget-object p0, Lcom/facebook/ads/internal/w/g/a;->a:Lcom/facebook/ads/internal/w/g/a;

    iget-object p1, p0, Lcom/facebook/ads/internal/w/g/a;->b:Lcom/facebook/ads/internal/w/g/b;

    iget-object p0, p0, Lcom/facebook/ads/internal/w/g/a;->c:Lcom/facebook/ads/internal/w/g/a$a;

    invoke-virtual {p1, p0}, Lcom/facebook/ads/internal/w/g/b;->a(Lcom/facebook/ads/internal/w/g/b$a;)V

    :cond_1
    :goto_0
    return-void
.end method
