.class public Lcom/miui/home/launcher/assistant/module/model/ColorLine;
.super Ljava/lang/Object;
.source "ColorLine.java"


# instance fields
.field private colorVal:I

.field private ratio:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/home/launcher/assistant/module/model/ColorLine;->ratio:I

    iput p2, p0, Lcom/miui/home/launcher/assistant/module/model/ColorLine;->colorVal:I

    return-void
.end method


# virtual methods
.method public getColorVal()I
    .locals 1

    iget v0, p0, Lcom/miui/home/launcher/assistant/module/model/ColorLine;->colorVal:I

    return v0
.end method

.method public getRatio()I
    .locals 1

    iget v0, p0, Lcom/miui/home/launcher/assistant/module/model/ColorLine;->ratio:I

    return v0
.end method

.method public setColorVal(I)V
    .locals 0

    iput p1, p0, Lcom/miui/home/launcher/assistant/module/model/ColorLine;->colorVal:I

    return-void
.end method

.method public setRatio(I)V
    .locals 0

    iput p1, p0, Lcom/miui/home/launcher/assistant/module/model/ColorLine;->ratio:I

    return-void
.end method
