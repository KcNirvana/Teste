.class public Lcom/miui/payment/ui/view/PieChartView$PieChartData;
.super Ljava/lang/Object;
.source "PieChartView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/payment/ui/view/PieChartView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PieChartData"
.end annotation


# instance fields
.field private color:I

.field private label:Ljava/lang/String;

.field private value:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    iget v0, p0, Lcom/miui/payment/ui/view/PieChartView$PieChartData;->color:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/ui/view/PieChartView$PieChartData;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()D
    .locals 2

    iget-wide v0, p0, Lcom/miui/payment/ui/view/PieChartView$PieChartData;->value:D

    return-wide v0
.end method

.method public setColor(I)V
    .locals 0

    iput p1, p0, Lcom/miui/payment/ui/view/PieChartView$PieChartData;->color:I

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/ui/view/PieChartView$PieChartData;->label:Ljava/lang/String;

    return-void
.end method

.method public setValue(D)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/payment/ui/view/PieChartView$PieChartData;->value:D

    return-void
.end method
