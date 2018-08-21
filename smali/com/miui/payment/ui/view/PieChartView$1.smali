.class Lcom/miui/payment/ui/view/PieChartView$1;
.super Ljava/lang/Object;
.source "PieChartView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/payment/ui/view/PieChartView;->calculateSweepAngle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/miui/payment/ui/view/PieChartView$PieChartData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/payment/ui/view/PieChartView;


# direct methods
.method constructor <init>(Lcom/miui/payment/ui/view/PieChartView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/ui/view/PieChartView$1;->this$0:Lcom/miui/payment/ui/view/PieChartView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/payment/ui/view/PieChartView$PieChartData;Lcom/miui/payment/ui/view/PieChartView$PieChartData;)I
    .locals 4

    invoke-virtual {p1}, Lcom/miui/payment/ui/view/PieChartView$PieChartData;->getValue()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/miui/payment/ui/view/PieChartView$PieChartData;->getValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/miui/payment/ui/view/PieChartView$PieChartData;

    check-cast p2, Lcom/miui/payment/ui/view/PieChartView$PieChartData;

    invoke-virtual {p0, p1, p2}, Lcom/miui/payment/ui/view/PieChartView$1;->compare(Lcom/miui/payment/ui/view/PieChartView$PieChartData;Lcom/miui/payment/ui/view/PieChartView$PieChartData;)I

    move-result v0

    return v0
.end method
