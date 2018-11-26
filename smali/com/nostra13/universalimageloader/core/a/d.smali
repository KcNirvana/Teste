.class Lcom/nostra13/universalimageloader/core/a/d;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final biS:Z

.field public final biT:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/nostra13/universalimageloader/core/a/d;->biT:I

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/a/d;->biS:Z

    return-void
.end method

.method protected constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/nostra13/universalimageloader/core/a/d;->biT:I

    iput-boolean p2, p0, Lcom/nostra13/universalimageloader/core/a/d;->biS:Z

    return-void
.end method
