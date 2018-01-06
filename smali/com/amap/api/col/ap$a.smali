.class Lcom/amap/api/col/ap$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/ap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Landroid/graphics/Bitmap;

.field b:Ljava/lang/String;

.field c:Z

.field d:J

.field e:I

.field f:J

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/col/bj;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic h:Lcom/amap/api/col/ap;


# direct methods
.method public constructor <init>(Lcom/amap/api/col/ap;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/amap/api/col/ap$a;->h:Lcom/amap/api/col/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/amap/api/col/ap$a;->a:Landroid/graphics/Bitmap;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/col/ap$a;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/ap$a;->c:Z

    iput-wide v2, p0, Lcom/amap/api/col/ap$a;->d:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/api/col/ap$a;->e:I

    iput-wide v2, p0, Lcom/amap/api/col/ap$a;->f:J

    iput-object v1, p0, Lcom/amap/api/col/ap$a;->g:Ljava/util/List;

    return-void
.end method
