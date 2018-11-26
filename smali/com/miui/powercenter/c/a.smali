.class public Lcom/miui/powercenter/c/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public aOD:D

.field public aOE:I

.field public appName:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bem(Lcom/miui/powercenter/c/a;)I
    .locals 4

    iget-wide v0, p1, Lcom/miui/powercenter/c/a;->aOD:D

    iget-wide v2, p0, Lcom/miui/powercenter/c/a;->aOD:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/miui/powercenter/c/a;

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/c/a;->bem(Lcom/miui/powercenter/c/a;)I

    move-result v0

    return v0
.end method
