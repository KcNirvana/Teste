.class public Lcom/miui/powercenter/autotask/v;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public aLt:I

.field public start:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/autotask/v;->aYD(I)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/powercenter/autotask/v;->start:I

    iput p2, p0, Lcom/miui/powercenter/autotask/v;->aLt:I

    return-void
.end method


# virtual methods
.method public aYD(I)V
    .locals 1

    shr-int/lit8 v0, p1, 0x10

    iput v0, p0, Lcom/miui/powercenter/autotask/v;->start:I

    const v0, 0xffff

    and-int/2addr v0, p1

    iput v0, p0, Lcom/miui/powercenter/autotask/v;->aLt:I

    return-void
.end method

.method public getValue()I
    .locals 2

    iget v0, p0, Lcom/miui/powercenter/autotask/v;->start:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Lcom/miui/powercenter/autotask/v;->aLt:I

    add-int/2addr v0, v1

    return v0
.end method
