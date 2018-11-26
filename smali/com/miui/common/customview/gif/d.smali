.class public Lcom/miui/common/customview/gif/d;
.super Ljava/lang/Object;
.source ""


# instance fields
.field axm:I

.field axn:Lcom/miui/common/customview/gif/g;

.field axo:Ljava/util/List;

.field axp:Z

.field axq:[I

.field axr:I

.field axs:I

.field axt:I

.field axu:I

.field height:I

.field loopCount:I

.field status:I

.field width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/common/customview/gif/d;->axq:[I

    iput v1, p0, Lcom/miui/common/customview/gif/d;->status:I

    iput v1, p0, Lcom/miui/common/customview/gif/d;->axm:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/common/customview/gif/d;->axo:Ljava/util/List;

    return-void
.end method
