.class Lcom/miui/assistant/imagemagic/ImageProcess$Rect;
.super Ljava/lang/Object;
.source "ImageProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/assistant/imagemagic/ImageProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Rect"
.end annotation


# instance fields
.field h:F

.field w:F

.field x:F

.field y:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/assistant/imagemagic/ImageProcess$Rect;->x:F

    iput p2, p0, Lcom/miui/assistant/imagemagic/ImageProcess$Rect;->y:F

    iput p3, p0, Lcom/miui/assistant/imagemagic/ImageProcess$Rect;->w:F

    iput p4, p0, Lcom/miui/assistant/imagemagic/ImageProcess$Rect;->h:F

    return-void
.end method
