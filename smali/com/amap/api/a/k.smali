.class public abstract Lcom/amap/api/a/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/a/k$a;
    }
.end annotation


# instance fields
.field public a:Lcom/amap/api/a/k$a;

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:Lcom/amap/api/maps2d/a/c;

.field public g:Z

.field public h:Landroid/graphics/Point;

.field public i:Lcom/amap/api/maps2d/a/i;

.field public j:I

.field public k:I

.field public l:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/amap/api/a/k$a;->a:Lcom/amap/api/a/k$a;

    iput-object v0, p0, Lcom/amap/api/a/k;->a:Lcom/amap/api/a/k$a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/a/k;->g:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/a/k;->h:Landroid/graphics/Point;

    return-void
.end method
