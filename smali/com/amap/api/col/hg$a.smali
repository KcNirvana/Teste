.class Lcom/amap/api/col/hg$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/hg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lcom/amap/api/col/hh;

.field final synthetic b:Lcom/amap/api/col/hg;


# direct methods
.method constructor <init>(Lcom/amap/api/col/hg;Lcom/amap/api/col/hh;)V
    .locals 1

    iput-object p1, p0, Lcom/amap/api/col/hg$a;->b:Lcom/amap/api/col/hg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/hg$a;->a:Lcom/amap/api/col/hh;

    iput-object p2, p0, Lcom/amap/api/col/hg$a;->a:Lcom/amap/api/col/hh;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/hg$a;->b:Lcom/amap/api/col/hg;

    iget v1, v0, Lcom/amap/api/col/hg;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/amap/api/col/hg;->c:I

    iget-object v0, p0, Lcom/amap/api/col/hg$a;->b:Lcom/amap/api/col/hg;

    iget-object v1, p0, Lcom/amap/api/col/hg$a;->a:Lcom/amap/api/col/hh;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/hg;->a(Lcom/amap/api/col/hh;)V

    iget-object v0, p0, Lcom/amap/api/col/hg$a;->b:Lcom/amap/api/col/hg;

    iget v1, v0, Lcom/amap/api/col/hg;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/amap/api/col/hg;->c:I

    return-void
.end method
