.class public Lcom/amap/api/col/ag$a;
.super Landroid/view/ViewGroup$LayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Lcom/amap/api/maps2d/a/h;

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(IILcom/amap/api/maps2d/a/h;III)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/col/ag$a;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/ag$a;->b:Lcom/amap/api/maps2d/a/h;

    iput v1, p0, Lcom/amap/api/col/ag$a;->c:I

    iput v1, p0, Lcom/amap/api/col/ag$a;->d:I

    const/16 v0, 0x33

    iput v0, p0, Lcom/amap/api/col/ag$a;->e:I

    iput v1, p0, Lcom/amap/api/col/ag$a;->a:I

    iput-object p3, p0, Lcom/amap/api/col/ag$a;->b:Lcom/amap/api/maps2d/a/h;

    iput p4, p0, Lcom/amap/api/col/ag$a;->c:I

    iput p5, p0, Lcom/amap/api/col/ag$a;->d:I

    iput p6, p0, Lcom/amap/api/col/ag$a;->e:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/col/ag$a;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/ag$a;->b:Lcom/amap/api/maps2d/a/h;

    iput v1, p0, Lcom/amap/api/col/ag$a;->c:I

    iput v1, p0, Lcom/amap/api/col/ag$a;->d:I

    const/16 v0, 0x33

    iput v0, p0, Lcom/amap/api/col/ag$a;->e:I

    return-void
.end method
